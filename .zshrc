# Alias auto-rechargés à chaque prompt (put aliases in zsh_aliases)
_reload_aliases() {
  [[ -f ~/.zsh_aliases ]] && source ~/.zsh_aliases
}
autoload -Uz add-zsh-hook
add-zsh-hook precmd _reload_aliases
_reload_aliases



