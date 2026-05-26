Claude code dans un docker avec ccstatusline

# Rebuild
docker run --name claude-tmp php:8.5-cli bash -c '
set -e
apt-get update && apt-get install -y \
curl unzip git jq \
libzip-dev libicu-dev libxml2-dev libonig-dev \
openssh-client
docker-php-ext-install mbstring xml zip intl pdo pdo_mysql
curl -sS https://getcomposer.org/installer | php -- \
--install-dir=/usr/local/bin --filename=composer
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt-get install -y nodejs
npm install -g @anthropic-ai/claude-code ccstatusline
'




docker commit claude-tmp claude-code

docker rm claude-tmp

# Vérifie les versions
docker run --rm claude-code php -v

docker run --rm claude-code node -v

docker run --rm claude-code composer -V

alias cld='docker run -it --rm -v "$(pwd)":"$(pwd)" -v "$HOME/.claude":/root/.claude -v "$HOME/.config/ccstatusline":/root/.config/ccstatusline -v "$HOME/.claude.json":/root/.claude.json -e CLAUDE_CODE_USE_KEYCHAIN=false -e TERM=xterm-256color -e COLORTERM=truecolor -e COLUMNS=$(tput cols) -e LINES=$(tput lines) -w "$(pwd)" claude-code claude'


# rapsberry pi remote controle with claude

tmux new -s claude
source ~/.bashrc 
cd project/
TERM=xterm-256color cld
/remote-control
# CTRL + B  
# D (détache tmux)
  
