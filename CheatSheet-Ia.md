# Claude code dans un docker avec ccstatusline avec playwright 
 

<pre>
avec playwright -- CONF OK

docker run --name claude-tmp php:8.5-cli bash -c '
  set -e
  apt-get update && apt-get install -y \
    curl unzip git jq libzip-dev libicu-dev libxml2-dev libonig-dev openssh-client imagemagick
  docker-php-ext-install mbstring xml zip intl pdo pdo_mysql
  curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
  curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
  apt-get install -y nodejs
  npm install -g @anthropic-ai/claude-code ccstatusline @playwright/mcp
  playwright-mcp install-browser --with-deps chromium
' && docker commit claude-tmp claude-code && docker rm claude-tmp

</pre>

# Vérifie les versions

<pre>
docker run --rm claude-code php -v

docker run --rm claude-code node -v

docker run --rm claude-code composer -V

alias cld='docker run -it --rm --shm-size=1g --cpus=2 --memory=3g -v "$(pwd)":"$(pwd)" -v "$HOME/.claude":/root/.claude -v "$HOME/.config/ccstatusline":/root/.config/ccstatusline -v "$HOME/.claude.json":/root/.claude.json -e CLAUDE_CODE_USE_KEYCHAIN=false -e TERM=xterm-256color -e COLORTERM=truecolor -e COLUMNS=$(tput cols) -e LINES=$(tput lines) -w "$(pwd)" claude-code claude'
</pre>

# update claude docker 

<pre>
docker run --name claude-tmp claude-code bash -c "npm install -g @anthropic-ai/claude-code && npm install -g ccstatusline"
docker commit claude-tmp claude-code
docker rm claude-tmp

alias cld-update='docker run --name claude-tmp claude-code bash -c "npm install -g @anthropic-ai/claude-code && npm install -g ccstatusline" && docker commit claude-tmp claude-code && docker rm claude-tmp'
</pre>

# rapsberry pi remote controle with claude

<pre>
tmux new -s claude
source ~/.bashrc 
cd project/
TERM=xterm-256color cld
/remote-control
# CTRL + B  
# D (détache tmux)
</pre>
