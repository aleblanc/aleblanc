
## Mac Osx
### Sauvegarder / restaurer onglet épinglés Firefox

Sauvegarder les onglets :

    1 récupérer /Users/user/Library/Application\ Support/Firefox/Profiles/xxxxxxxxxxxx/sessionstore-backups/recovery.jsonlz4
    2 le renommer en previous.jsonlz4
   
restaurer 

    [Kill Firefox]
    rm /Users/user/Library/Application\ Support/Firefox/Profiles/xxxxxxxxxxxx/sessionstore-backups/*
    cp /Users/user/Documents/backupfirefox/previous.jsonlz4 /Users/user/Library/Application\ Support/Firefox/Profiles/xxxxxxxx/sessionstore-backups/

### brew

installation :
    
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


update macosx brew :

    brew update

outdated programes

    brew outdated
    brew cask outdated

upgrade

    brew upgrade
    brew cask upgrade

Update php - ajout php7.4

    brew install php@7.4
    brew upgrade php
    brew install php@7.3
    brew reinstall php@5.6

corriger bug icu4c version 64 - dyld: Library not loaded: /usr/local/opt/icu4c/lib/libicui18n.64.dylib

    git -C $(brew --repo homebrew/core) fetch --unshallow
    brew log icu4c

    [find the commit]

    cd $(brew --repo homebrew/core)
    git checkout 896d1018c7a4906f2c3fa1386aaf283497db60a2 -- Formula/icu4c.rb
    brew uninstall  --ignore-dependencies icu4c
    brew install icu4c
    git reset && git checkout .
    brew pin icu4c

### Shortcuts Mac osx et PhpStorm

SHORT CUTS (⌘⌥⇧⌃)

    ⇧ MAJ
    ⌃ CTRL
    ⌥ OPT
    ⌘ CMD

MAC Osx short cut :

    ⌥n : ~
    ⇧⌥l : | (pip)
    ⌥( : {
    ⇧⌥( : [
    ⇧⌥: : \
    ⌃ ⌘q : verrouiller
    ⌘ flèches: touch swap desktop

Php Storm :

    ⇧⌥⌘ sourie : sélection multiligne
    ⌥⌘l : Reformat code
    ⇧⌘f : Find in path
    ⌥⌘q : close current project
    ⇧⌥ top : déplace ligne vers le haut
    ⇧⌥ bot : déplace ligne vers le bas
    ⌘d   : dupliquer ligne
    ⇧⌘a : find action
    ⌥⌘a : find action
    ⇧⌘u : toogle case majuscule / minuscule

### phpstorm
Maximum heap size : 2048

custom PhpStorm VM options

Help -> Edit Custom VM options

    -Xms256m
    -Xmx1024m
    -XX:ReservedCodeCacheSize=240m
    -XX:+UseConcMarkSweepGC
    -XX:SoftRefLRUPolicyMSPerMB=50
    -ea
    -Dsun.io.useCanonCaches=false
    -Djava.net.preferIPv4Stack=true
    -XX:+HeapDumpOnOutOfMemoryError
    -XX:-OmitStackTraceInFastThrow

#### Plugins 

https://www.jetbrains.com/toolbox-app/

https://plugins.jetbrains.com/plugin/7622-php-inspections-ea-extended-

https://plugins.jetbrains.com/plugin/7219-symfony-support

#### CheatSheet 

https://resources.jetbrains.com/storage/products/phpstorm/docs/PhpStorm_ReferenceCard.pdf

### alias .bash_profile 

ajout / modification

    nano .bash_profile
    source .bash_profile
    
    alias php73='brew unlink php@{5.6,7.0,7.1,7.2,7.3} && brew link php@7.3 --force'
