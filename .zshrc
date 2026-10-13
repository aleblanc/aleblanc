# Alias auto-rechargés à chaque prompt (put aliases in zsh_aliases)
_reload_aliases() {
  [[ -f ~/.zsh_aliases ]] && source ~/.zsh_aliases
}
autoload -Uz add-zsh-hook
add-zsh-hook precmd _reload_aliases
_reload_aliases



# ===================== eternalSSH : ssh persistant (tmux/screen, sans dépendance) =====================

ETERNAL_NAME="alex"   # nom du socket/session, isolé des autres utilisateurs du compte
ETERNAL_RETRY=5       # secondes entre deux tentatives de reconnexion

_eternal_launch() {
  local target="${aliases[$1]#ssh }"
  local n="$ETERNAL_NAME" rc remote

  remote="if command -v tmux >/dev/null 2>&1; then
  exec tmux -L ${n} start-server \\; set -g mouse off \\; set -g history-limit 50000 \\; set -g status off \\; set -ga terminal-overrides ',xterm*:smcup@:rmcup@' \\; new -A -s ${n}
elif command -v screen >/dev/null 2>&1; then
  f=\$(mktemp /tmp/.${n}-screenrc.XXXXXX)
  printf '%s\\n' 'defscrollback 50000' 'termcapinfo xterm* ti@:te@' 'altscreen off' 'startup_message off' > \"\$f\"
  screen -ls | grep -q \"[.]${n}[[:space:]]\" || screen -c \"\$f\" -dmS ${n}
  screen -c \"\$f\" -S ${n} -xRR
  rc=\$?; rm -f \"\$f\"; exit \$rc
else
  echo 'ni tmux ni screen sur ce serveur, shell simple' >&2
  exec \${SHELL:-/bin/sh} -l
fi"

  echo "→ $1  ($target)  [session ${n}]"
  local lost=0 start
  while true; do
    start=$SECONDS
    command ssh -t \
      -o ServerAliveInterval=10 \
      -o ServerAliveCountMax=3 \
      -o TCPKeepAlive=yes \
      -o ConnectTimeout=10 \
      -o LogLevel=QUIET \
      "$target" "$remote"
    rc=$?
    (( SECONDS - start > 30 )) && lost=0
    case $rc in
      0)   return 0 ;;
      130) echo "eternal: interrompu."; return 130 ;;
      *)   if (( ! lost )); then
             lost=1
             echo "eternal: connexion perdue, reconnexion silencieuse en cours (Ctrl-C pour arrêter)…"
           fi
           sleep $ETERNAL_RETRY || return 130 ;;
    esac
  done
}

# Liste les alias ssh_* dont la définition est exactement "ssh user@domaine"
_eternal_candidates() {
  local a
  for a in ${(ko)aliases}; do
    [[ "$a" == ssh_* && "${aliases[$a]}" =~ '^ssh [A-Za-z0-9._-]+@[A-Za-z0-9._-]+$' ]] && echo "$a"
  done
}

eternal() {
  local -a names
  names=(${(f)"$(_eternal_candidates)"})
  if (( ${#names} == 0 )); then
    echo "Aucun alias ssh_* de la forme 'ssh user@domaine' trouvé." >&2
    return 1
  fi

  local choice="$1"

  if [[ -z "$choice" ]]; then
    local i=1 a
    for a in $names; do
      printf '%2d) %-22s %s\n' $i "$a" "${aliases[$a]#ssh }"
      (( i++ ))
    done
    printf 'Numéro ou nom (Entrée pour annuler) : '
    read -r choice
    [[ -z "$choice" ]] && return 1
  fi

  if [[ "$choice" =~ '^[0-9]+$' ]]; then
    (( choice >= 1 && choice <= ${#names} )) || { echo "Numéro invalide." >&2; return 1; }
    choice="${names[$choice]}"
  fi

  [[ "$choice" != ssh_* ]] && choice="ssh_$choice"

  if (( ${names[(Ie)$choice]} )); then
    _eternal_launch "$choice"
  else
    echo "eternal: '$choice' n'est pas un alias ssh_* de la forme 'ssh user@domaine'" >&2
    return 1
  fi
}

# Bonus : ssh_prod_eternal fonctionne aussi. Le handler existant (Homebrew, oh-my-zsh…) est préservé.
if (( $+functions[command_not_found_handler] )) \
   && [[ "$functions[command_not_found_handler]" != *_eternal_marker* ]] \
   && ! (( $+functions[_eternal_prev_cnf] )); then
  functions[_eternal_prev_cnf]=$functions[command_not_found_handler]
fi
command_not_found_handler() {
  : _eternal_marker
  if [[ "$1" == *_eternal ]]; then
    eternal "${1%_eternal}"
    return $?
  fi
  if (( $+functions[_eternal_prev_cnf] )); then
    _eternal_prev_cnf "$@"
    return $?
  fi
  echo "zsh: command not found: $1" >&2
  return 127
}

# == END eternalSSH =====================
