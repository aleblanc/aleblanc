export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export EDITOR=/usr/bin/nano
export GITHUB_TOKEN=


alias ytdl="yt-dlp -f \"bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best\" "
alias editHosts="sudo nano /etc/hosts"
alias psg='ps aux | grep'
alias ll='ls -FGlAhp'
alias grep='grep --color'
alias f='open -a Finder ./' 
alias wget='wget -c'
alias df='df -H'
alias du='du -ch'
#   lr:  Full Recursive Directory Listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias ttop="top -R -F -s 10 -o rsize"


#   ---------------------------
#   Developement
#   ---------------------------

alias nginxRestart="sudo brew services restart nginx"
alias nginxStart="sudo brew services start nginx"
alias nginxStop="sudo brew services stop nginx"
alias sf="php bin/console "
alias cc="php bin/console clear:cache "
alias phplog='log stream --info --debug --predicate "process CONTAINS '\''php'\''" --style syslog'
alias phplogfpm='log stream --info --debug --predicate "process CONTAINS '\''php-fpm'\''" --style syslog'
alias phpcsfix='php ~/.bin/php-cs-fixer-v3.phar self-update && php ~/.bin/php-cs-fixer-v3.phar fix -v src/'
alias composer='php ~/.bin/composer.phar'
alias phpstan='php ~/.bin/phpstan.phar analyse src/'

#   ---------------------------
#   DOCKER
#   ---------------------------

alias dcssh='docker-compose exec php ash'
alias dcsshbash='docker-compose exec php bash'
alias dcup='docker-compose up'
alias dcstop='docker-compose stop'
alias dcdown='docker-compose down -v'
alias dcstopall='docker container stop $(docker ps -q)'
alias dckillall='docker container kill $(docker ps -q)'
alias dccc="docker-compose exec php php bin/console c:c"
alias dockerclear="docker-compose run php72 php bin/console ca:cl"

#   ---------------------------
#   NETWORKING
#   ---------------------------

alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs
alias flushDns="sudo killall -HUP mDNSResponder"
alias flush__dns2="dscacheutil -flushcache"
