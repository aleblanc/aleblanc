
# Table of contents ( generator : https://luciopaiva.com/markdown-toc/ )
- [Symfony](#symfony)
  - [Security checker](#security-checker)
  - [Extract / update translations](#extract--update-translations)
  - [lexik](#lexik)
  - [doctrine](#doctrine)
- [UNIX](#unix)
  - [Téléchargement des IP par pays et filtrage des IP française](#tlchargement-des-ip-par-pays-et-filtrage-des-ip-franaise)
  - [mettre certificat ssl à jour dans php.ini pour Curl :](#mettre-certificat-ssl--jour-dans-phpini-pour-curl-)
  - [tunnel de connexion ssh inversé](#tunnel-de-connexion-ssh-invers)
  - [BUG write only Read-only file system :](#bug-write-only-read-only-file-system-)
  - [archiver / desarchiver](#archiver--desarchiver)
  - [Ram utilisé par les process sur linux :](#ram-utilis-par-les-process-sur-linux-)
  - [find os :](#find-os-)
  - [Image Magick : resize crop convert flip](#image-magick--resize-crop-convert-flip)
  - [find a file](#find-a-file)
  - [find recent modified files](#find-recent-modified-files)
  - [remplacer les droits depuis un find :](#remplacer-les-droits-depuis-un-find-)
  - [renommer / rename les extensions de fichiers](#renommer--rename-les-extensions-de-fichiers)
  - [rechercher un terme et compter le nombre de ligne avec grep](#rechercher-un-terme-et-compter-le-nombre-de-ligne-avec-grep)
  - [differences entre 2 fichier avec diff](#differences-entre-2-fichier-avec-diff)
  - [sendmail from CLI with mailx](#sendmail-from-cli-with-mailx)
  - [remove .svn](#remove-svn)
  - [undo SVN, revenir en arrière avec SVN](#undo-svn-revenir-en-arrire-avec-svn)
  - [export entre 2 révisions SVN](#export-entre-2-rvisions-svn)
  - [SVN with SSH](#svn-with-ssh)
  - [TAR evec exclude](#tar-evec-exclude)
  - [process](#process)
  - [crontab cron avec nano](#crontab-cron-avec-nano)
  - [tail des 13000 dernière lignes](#tail-des-13000-dernire-lignes)
  - [Wget en mode spider (aspiration de site)](#wget-en-mode-spider-aspiration-de-site)
  - [GPG PGP en définissant le home](#gpg-pgp-en-dfinissant-le-home)
  - [RSYNC :](#rsync-)
  - [generate big file 500Mo:](#generate-big-file-500mo)
  - [lister les fichiers de plus d'un an](#lister-les-fichiers-de-plus-dun-an)
  - [calcul du poid des fichiers qui datent de plus de 1 an](#calcul-du-poid-des-fichiers-qui-datent-de-plus-de-1-an)
  - [Supprimer les fichier de plus de 365 jours](#supprimer-les-fichier-de-plus-de-365-jours)
  - [UNIX SUDO OTHER USER](#unix-sudo-other-user)
  - [Commande de rebond SSH + git pull en www-data](#commande-de-rebond-ssh--git-pull-en-www-data)
  - [restart nginx](#restart-nginx)
  - [restart mysql :](#restart-mysql-)
  - [restart php fpm](#restart-php-fpm)
  - [certificats p12 to public / privée](#certificats-p12-to-public--prive)
  - [Wget avec options](#wget-avec-options)
  - [Use CURL for ftp :](#use-curl-for-ftp-)
  - [Use CURL for POST data :](#use-curl-for-post-data-)
  - [CURL avec reprise de téléchargement](#curl-avec-reprise-de-tlchargement)
  - [file info](#file-info)
  - [Compress mp3 en 96k bitrate](#compress-mp3-en-96k-bitrate)
  - [Yarn + test fonctionnels Cypress](#yarn--test-fonctionnels-cypress)
  - [Ajouter certificat ssl avec certbot https://certbot.eff.org/](#ajouter-certificat-ssl-avec-certbot-httpscertbotefforg)
  - [Installer goaccess](#installer-goaccess)
  - [Installer munin](#installer-munin)
- [Composer](#composer)
  - [speed up composer :](#speed-up-composer-)
  - [require specific branche / version](#require-specific-branche--version)
  - [composer sans limit de memoire :](#composer-sans-limit-de-memoire-)
  - [ajouter repo privé dans composer.json](#ajouter-repo-priv-dans-composerjson)
- [Git](#git)
  - [create patch](#create-patch)
  - [annuler un merge et revenir sur un master propre](#annuler-un-merge-et-revenir-sur-un-master-propre)
  - [create tag](#create-tag)
  - [annuler une merge request avec commit commencée sur dev-1 :](#annuler-une-merge-request-avec-commit-commence-sur-dev-1-)
  - [GIT revenir en arrière sur un git pull défectueux :](#git-revenir-en-arrire-sur-un-git-pull-dfectueux-)
  - [command to identify the last-known-good state of your repo](#command-to-identify-the-last-known-good-state-of-your-repo)
  - [Git ignore saut de ligne phpstorm (windows) :](#git-ignore-saut-de-ligne-phpstorm-windows-)
  - [reset the remote repository back to that state](#reset-the-remote-repository-back-to-that-state)
  - [GIT tar entre 2 commit (où habsjahsb76776 est le numéro du précédent commit, les fichiers de ce précédent commit ne seront pas inclus)](#git-tar-entre-2-commit-o-habsjahsb76776-est-le-numro-du-prcdent-commit-les-fichiers-de-ce-prcdent-commit-ne-seront-pas-inclus)
  - [Git export 2 git avec exclude](#git-export-2-git-avec-exclude)
  - [Git problems de droits ignore ACL :](#git-problems-de-droits-ignore-acl-)
  - [git merger un uat vers une prod](#git-merger-un-uat-vers-une-prod)
  - [mette en place un projet existant dans GIT](#mette-en-place-un-projet-existant-dans-git)
  - [Si erreur ajouter clé dans github :](#si-erreur-ajouter-cl-dans-github-)
  - [gestion github avec plusieurs clés (si une autre clé est déjà utilisée)](#gestion-github-avec-plusieurs-cls-si-une-autre-cl-est-dj-utilise)
  - [GIT HELP](#git-help)
- [Ezplatform](#ezplatform)
  - [copy  subtree](#copy--subtree)
  - [exemple ezp api :](#exemple-ezp-api-)
  - [migration bundle kaliop](#migration-bundle-kaliop)
- [eZ Publish 5](#ez-publish-5)
  - [Commandes utiles](#commandes-utiles)
- [eZ Publish 4](#ez-publish-4)
  - [count download SQL](#count-download-sql)
  - [Si probleme avec urltransaltor :](#si-probleme-avec-urltransaltor-)
  - [clear cache by grep](#clear-cache-by-grep)
  - [ez publish fetch subtree avec class_identifier filter](#ez-publish-fetch-subtree-avec-class_identifier-filter)
  - [ez publish clear cache et reset datamap for preserve memory limit](#ez-publish-clear-cache-et-reset-datamap-for-preserve-memory-limit)
  - [accès ez publish ini du siteaccess admin](#accs-ez-publish-ini-du-siteaccess-admin)
  - [logs customs](#logs-customs)
  - [nettoyage base de donnée](#nettoyage-base-de-donne)
  - [commandes utiles](#commandes-utiles)
  - [ezcomponent generate persistante objects](#ezcomponent-generate-persistante-objects)
  - [PATCH EZ 4 vers PHP5.6](#patch-ez-4-vers-php56)
- [Solr](#solr)
  - [démarrer solr 6 :](#dmarrer-solr-6-)
  - [démarrer solr 4.9 :](#dmarrer-solr-49-)
  - [démarrer solr eZ Publish:](#dmarrer-solr-ez-publish)
  - [indexation ezpublish 4 :](#indexation-ezpublish-4-)
  - [indexation ezpublish 5 :](#indexation-ezpublish-5-)
  - [indexation ezplatform :](#indexation-ezplatform-)
  - [Exemple d'utilisation de l'API en direct](#exemple-dutilisation-de-lapi-en-direct)
- [SQL](#sql)
  - [MySQL taille db et tables](#mysql-taille-db-et-tables)
  - [MySQL taille DB](#mysql-taille-db)
  - [Créer un update SQL avec un select](#crer-un-update-sql-avec-un-select)
  - [MySQL DATE CONVERSION TIMESTAMP](#mysql-date-conversion-timestamp)
  - [MySQL UPDATE avec inner jointures](#mysql-update-avec-inner-jointures)
  - [MySQL RegExp and Replace](#mysql-regexp-and-replace)
  - [Exporter une table SQL en CSV](#exporter-une-table-sql-en-csv)
  - [MySQL dump avec compression gz](#mysql-dump-avec-compression-gz)
  - [MySQL importer un dump](#mysql-importer-un-dump)
  - [PostgreSQL : Installer et configuration de Symfony](#postgresql--installer-et-configuration-de-symfony)
  - [Dump / import PostgreSQL](#dump--import-postgresql)
- [Vagrant](#vagrant)
  - [ACCES MYSQL LOCAL VAGRANT](#acces-mysql-local-vagrant)
  - [MOUNT NAS vagrant :](#mount-nas-vagrant-)
- [Docker](#docker)
  - [Convert video avec handbrake :](#convert-video-avec-handbrake-)
  - [Drop table au démarrage docker :](#drop-table-au-dmarrage-docker-)
  - [docker lancé alpine en mode interactif](#docker-lanc-alpine-en-mode-interactif)
  - [liste tous les container dejà lancé](#liste-tous-les-container-dej-lanc)
  - [run and rm direct](#run-and-rm-direct)
  - [partage de volume](#partage-de-volume)
  - [webpack](#webpack)
  - [hub des truc installable](#hub-des-truc-installable)
  - [faire de la place dans docker](#faire-de-la-place-dans-docker)
- [Mac Osx](#mac-osx)
  - [Sauvegarder / restaurer onglet épinglés Firefox](#sauvegarder--restaurer-onglet-pingls-firefox)
  - [brew](#brew)
  - [Shortcuts Mac osx et PhpStorm](#shortcuts-mac-osx-et-phpstorm)
  - [phpstorm](#phpstorm)
  - [alias .bash_profile](#alias-bash_profile)
- [VueJS](#vuejs)
- [Sécurité](#scurit)
  - [Blocage par fichier hosts](#blocage-par-fichier-hosts)
  - [Google DNS](#google-dns)
  - [liste toutes les ips](#liste-toutes-les-ips)
  - [Nmap](#nmap)
  - [Outils](#outils)
- [SEO : List d'outils pratiques online pour l'optimisation de sites internet](#seo--list-doutils-pratiques-online-pour-loptimisation-de-sites-internet)
  - [Extraction des recherches bing dans les logs apache ou nginx :](#extraction-des-recherches-bing-dans-les-logs-apache-ou-nginx-)
  - [Google Analytics dans un email](#google-analytics-dans-un-email)
  - [Outils d’analyse de site Internet complets](#outils-danalyse-de-site-internet-complets)
  - [Outils de tests d’amélioration de site Internet / SEO](#outils-de-tests-damlioration-de-site-internet--seo)
- [Raspberry](#raspberry)
  - [send signal radio](#send-signal-radio)
- [Design pattern](#design-pattern)
  - [Classe](#classe)

-----

## Symfony

### Security checker 

    wget -O local-php-security-checker "https://github.com/fabpot/local-php-security-checker/releases/download/v1.0.0/local-php-security-checker_1.0.0_darwin_amd64"
    chmod 777 local-php-security-checker
    ./local-php-security-checker

NB : take last release here : https://github.com/fabpot/local-php-security-checker/releases/


### Installer une version beta de Symfony

    curl -s https://getcomposer.org/installer | php
    php composer.phar create-project symfony/skeleton:"^5.4"  symfony-project -s dev


### Extract / update translations

    php app/console translation:extract fr --dir=./src/ --output-dir=./app/Resources/translations
    php app/console translation:extract fr --bundle=AppBundle --output-format="yml"
    php app/console translation:update --force fr AppBundle --output-format="yml"

### lexik
merge lexik translations

    php ./bin/console lexik:translations:import -g -m -c

### doctrine

#### drop and create databse

    php app/console doctrine:database:drop --force
    php app/console doctrine:database:create
   
#### generation de migration

    php bin/console doctrine:migrations:diff --env=dev

#### modifier / créer une entitée

    php bin/console make:entity

#### créer une entité doctrine

    php bin/console generate:doctrine:entity  --entity=AppBundle:EntityName --format=annotation --fields="token:string(length=255 nullable=false) email:string(length=255 nullable=false) country_id:integer invite_user_id:integer token_used:integer createdAt:datetime"

#### update DB from entities

    php ezpublish/console doctrine:schema:update --dump-sql
    php ezpublish/console doctrine:schema:update --force

#### How to Generate Entities from an Existing Database
    
    php bin/console doctrine:mapping:import "App\Entity" annotation --path=src/Entity

#### Generating the Getters & Setters or PHP Classes

    // generates getter/setter methods for all Entities
    php bin/console make:entity --regenerate App
    
    // generates getter/setter methods for one specific Entity
    php bin/console make:entity --regenerate App\\Entity\\Country
    
#### Base de données historique météo

``` php
        for ($i = 1890; $i < 2012; ++$i) {
		exec('wget -O ' . $i . '.csv.gz ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/' . $i . '.csv.gz');
    	}
	//station ids : ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/ghcnd-stations.txt
```

---------------

## UNIX

### Téléchargement des IP par pays et filtrage des IP française

	/usr/bin/wget  "https://download.ip2location.com/lite/IP2LOCATION-LITE-DB1.CSV.ZIP" -O /tmp/IP2LOCATION-LITE-DB1.CSV.ZIP && cd /tmp/ && /usr/bin/unzip -o /tmp/IP2LOCATION-LITE-DB1.CSV.ZIP && less /tmp/IP2LOCATION-LITE-DB1.CSV | grep 'FR' > /tmp/geofr.csv

### mettre certificat ssl à jour dans php.ini pour Curl :

    wget https://curl.haxx.se/ca/cacert.pem
    curl.cainfo = "/path/to/cacert.pem"
    
### tunnel de connexion ssh inversé

Sur le serveur1 :
ssh -N -R 10022:127.0.0.1:22 user_serveur2@X.X.X.X

Sur le serveur2 :
ssh -p 10022 user_serveur1@127.0.0.1

### BUG write only Read-only file system :

	su
	fdisk -l
	fsck.ext4 -f -y /dev/sda2
	sudo reboot
	sudo /etc/init.d/elasticsearch restart
	sudo service mariadb restart
	sudo service nginx restart
	sudo service php7.0-fpm restart

### archiver / desarchiver

archiver

    tar -cvzpf archive.tgz /home/example/public_html/folder --exclude 'yopyopyop'
    gzip cms.sql

desarchiver

    tar -zxvf archive.tgz
    gzip -d cms.sql
    tar -xvf archive.tar

### Ram utilisé par les process sur linux :

    lsof +L1

### find os :

    cat /etc/os-release
    cat /proc/version
    lsb_release -a
    hostnamectl

### Image Magick : resize crop convert flip

FAST RESIZE CMD IMAGE Magick :

    mogrify -resize 588x1000 *.jpg

FAST CROP :

    mogrify -crop 960x200+0+0 *.jpg

FAST FLIP vertical / horizontal :

    mogrify -flip *.jpg
    mogrify -flop *.jpg

CONVERTION SVG TO PNG keep transparency :

    mogrify -background none -format png *.svg


composer des images

    convert -size 826x600 xc:skyblue -page +53+96 capture.png -page +0+0 layer.png -layers flatten mon_image3.png

composer des images et les rendres transparentes :

    convert -size 826x600 xc:none -page +55+96 capture.png -page +0+0 layer.png -background none -layers flatten mon_image3.png


### find a file
    find . -name "file.tpl"

### find recent modified files
    find . -mtime -2 -print


### remplacer les droits depuis un find :
    find . -name '*.php' -print0 | xargs -0 chmod 644
    find /var/www/site/ -mindepth 1 -type d -exec chmod 750 {} \;
    find /var/www/site/ -mindepth 1 -type f -exec chmod 640 {} \;
    find /var/www/site/ -mindepth 1 -exec chown www-data:www-data {} \;

### renommer / rename les extensions de fichiers
	for file in *.txt; do mv "$file" "${file%.txt}.py"; done

### rechercher un terme et compter le nombre de ligne avec grep

    grep -n recherche fichiers* | wc -l

### differences entre 2 fichier avec diff

    diff -EbwB fichier1.php fichier2.php

### sendmail from CLI with mailx

    echo " " | mailx -s 'Hi' 'jo@exemple.com' 

### remove .svn
    rm -rf `find . -type d -name .svn`
    find . -name ".svn" -type d -exec rm -rf {} \;

### undo SVN, revenir en arrière avec SVN

    svn merge -r 7103:7102 ./ --dry-run
    svn ci

### export entre 2 révisions SVN

    tar cfvz export.tar.gz `svn diff -r 1234:HEAD --summarize $1 | grep -e '^M ' -e '^A ' | sed "s/A       //g"  | sed "s/M       //g"` --exclude '.svn'

### SVN with SSH

    svn mkdir svn+ssh://USER@IP_SERVEUR/site/trunk
    svn checkout svn+ssh://USER@IP_SERVEUR/site/trunk

###TAR evec exclude
    tar -cvzpf backup.tgz ./folder --exclude folder/excludeme --exclude folder/excludeme2

### process
    ps -aux
    top
    htop

### crontab cron avec nano

    export VISUAL=nano; crontab -e

### tail des 13000 dernière lignes
    tail -n 13000 access.log | less

### Wget en mode spider (aspiration de site)

    wget --spider --recursive http://www.xxx.x/

### GPG PGP en définissant le home
    HOME=/var/home /usr/bin/gpg2 --import /tmp/

### RSYNC :

    rsync --progress --partial -avz /from/ user@1.2.3.4:~/to/


reprise de telechargement limité a 1000kb :

    rsync -av --append --progress --bwlimit=1000  test.gz user@1.2.3.4:~/to/test.gz

### generate big file 500Mo:

    dd if=/dev/zero of=file.txt count=500 bs=1048576

### lister les fichiers de plus d'un an

    find . -type f  -mtime +365 -exec ls -la {} \;

### calcul du poid des fichiers qui datent de plus de 1 an

    find . -type f -mtime +365 -print0 | du --files0-from=- -hc | tail -n1

### Supprimer les fichier de plus de 365 jours

    find . -type f  -mtime +365 -delete

### UNIX SUDO OTHER USER

    sudo -H -u otheruser bash -c 'echo "I am $USER, with uid $UID"'

### Commande de rebond SSH + git pull en www-data

``` shell
    ssh -tt X.X.X.X 'ssh -tt Y.Y.Y.Y "sudo -H -u www-data bash -c \"cd /var/www/xxxx/www/html/; git pull origin master\"" '
``` 

### restart nginx

    sudo /etc/init.d/nginx reload

### restart mysql :

    sudo service mysql restart

### restart php fpm

    sudo /etc/init.d/php-fpm restart

### certificats p12 to public / privée

Private key :

    openssl pkcs12 -in yourP12File.p12 -nocerts -out privateKey.pem

Certificates public :

    openssl pkcs12 -in yourP12File.p12 -clcerts -nokeys -out publicCert.pem

### Wget avec options

wget avec user agent pet autre ip our la nouvelle infra
    
    wget https://X.X.X.X --header="Host: www.host.com"  --no-check-certificate --header="User-Agent: Mozilla/5.0 (Windows NT 6.0) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11"

wget à travers un proxy

    https_proxy='http://1.2.3.X:12345' wget https://www.exemple.com
    
wget avec reprise de téléchargement

    wget -Uri  https://www.site.com/fichier -OutFile fichier -Resume

### Use CURL for ftp :

    curl --ftp-ssl --user login:mdp ftp://ftp.exemple.com/

### Use CURL for POST data :

    curl 'https://www.exemple.com' --data-raw 'parameter=1&param2=2'

### CURL avec reprise de téléchargement

    curl -L -O -C - https://www.site.com/fichier --ssl-no-revoke

### file info

    file input.file

### Compress mp3 en 96k bitrate

    ffmpeg -i input.file -map 0:a:0 -b:a 96k output.mp3


### Yarn + test fonctionnels Cypress


Installation

    npm install cypress --save-dev
    yarn add cypress --dev

Use 

    yarn install
    npm run cy:open
    npm run e2e > report.txt

### Ajouter certificat ssl avec certbot https://certbot.eff.org/

	apt-get install certbot python-certbot-nginx
	certbot --nginx

Exemple d'ajout

	sudo certbot --expand  -d  www.site1.com -d www.site2.com

### Installer goaccess

	sudo apt-get install libncurses-dev
	sudo apt-get install build-essential
	sudo apt-get install libgeoip-dev
	sudo apt-get install libncursesw5-dev libglib2.0-dev libgeoip-dev libtokyocabinet-dev
	sudo nano /usr/local/etc/goaccess.conf
	goaccess /var/www/site/logs/httpd-access.log -c -o /var/www/site/html/goaccess_report.html --real-time-html

### Installer munin

	sudo apt-get install munin munin-node
	cd /var/www/site/html/
	sudo ln -s /var/cache/munin/www/ munin
 
-----

## Composer

### speed up composer :

	composer global require hirak/prestissimo
	composer global require rubenrua/symfony-clean-tags-composer-plugin

	composer install --no-dev

### require specific branche / version

    composer require abcdef/ijkkmnop:1.2.2
    composer require abcdef/ijkkmnop:BRANCH_NAME

### composer sans limit de memoire :

    COMPOSER_MEMORY_LIMIT=-1 composer require lexik/translation-bundle --no-suggest

### ajouter repo privé dans composer.json

faire les modification de composer.json à la main::

``` json
	"repositories": [
	  {
		"type": "package",
		"package": {
		  "name": "folder/repo",
		  "version": "1.1",
		  "type": "package",
		  "source": {
			"url": "git@github.com:Folder/Repo.git",
			"type": "git",
			"reference": "master"
		  }
		}
	  }
	],
	
	,
	"folder/repo": "*"

```

    composer update

-----

## Git

### create patch

    git patch diff
    git diff commitid1 commitid2 --no-prefix > patch.txt


### annuler un merge et revenir sur un master propre

    git merge --abort
    git branch -D master
    git checkout master


### create tag

    git tag 1.2.4
    git push origin --tags

### annuler une merge request avec commit commencée sur dev-1 :

    git reset HEAD~1

### GIT revenir en arrière sur un git pull défectueux :

    git reset --hard master@{"10 minutes ago"}

http://stackoverflow.com/questions/1223354/undo-git-pull-how-to-bring-repos-to-old-state

### command to identify the last-known-good state of your repo

    git reflog

### Git ignore saut de ligne phpstorm (windows) :

    "C:\Program Files\Git\bin\git.exe" config --global core.autocrlf false
    "C:\Program Files\Git\bin\git.exe" config --global core.eol crlf

### reset the remote repository back to that state
    git push --force

### GIT tar entre 2 commit (où habsjahsb76776 est le numéro du précédent commit, les fichiers de ce précédent commit ne seront pas inclus)
    git diff HEAD habsjahsb76776 --name-only ./ | xargs tar -cf project.tar
    tar -xvf project.tar

### Git export 2 git avec exclude
    (git diff sdfsdfsf  zerzrzrz --name-only ./ && git diff mklmlmm  sfdsfsdfsfsdf --name-only ./ ) | xargs tar -cf mon_tar.tar --exclude=extension/monfichier

### Git problems de droits ignore ACL :

    git config core.fileMode false


### git merger un uat vers une prod

    git init
    git remote add origin git@github.com:xxx/yyy.git
    git fetch origin master
    ::FAIRE UN BACKUP::
    git pull origin master
    ::REMETTRE SON BACKUP::
    git checkout -b feature/version_uat
    git commit . -m "difference uat vers prod"
    git push --set-upstream origin feature/version_uat

### mette en place un projet existant dans GIT

    git init
    nano .gitignore
    git add .gitignore
    git commit -m "first commit"
    git config --global user.email "user@exemple.com"
    git config --global user.name "user"
    git commit -m "first commit"
    git remote add origin git@github.com:user/repo.git
    git push -u origin master

### Si erreur ajouter clé dans github :

    less ~/.ssh/id_rsa.pub

Si pas de clé :

    ssh-keygen -t rsa -b 4096
    less ~/.ssh/id_rsa.pub

Aller sur :

https://github.com/settings/ssh/new

Cliquer sur "new SSH key" et ajouter la clef SSH

### gestion github avec plusieurs clés (si une autre clé est déjà utilisée)

    ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa_other
    GIT_SSH_COMMAND="ssh -i ~/.ssh/id_rsa_other" git pull origin master

### GIT HELP

* https://github.com/tiimgreen/github-cheat-sheet
* http://orga.cat/posts/most-useful-git-commands

-----

## Ezplatform
### copy  subtree
    php bin/console ezplatform:copy-subtree 54 2

### exemple ezp api :

    curl https://www.monsite.com/api/ezp/v2/content/objects/123456 -H "Accept: application/vnd.ez.api.Content+json"

### migration bundle kaliop

    php app/console kaliop:migration:generate --format=yml AppBundle
    php app/console kaliop:migration:generate --type=role --match-type=all AppBundle
    php app/console kaliop:migration:migrate --path=src/AppBundle/MigrationVersions/20170821083644_placeholder.yml

export content type sous ezp2:

    php app/console kaliop:migration:generate --type=content_type --match-type=all --format=yml AppBundle

## eZ Publish 5

### Commandes utiles

création des liens symbolique 

>php ezpublish/console ezpublish:legacybundles:install_extensions --env=prod
>php ezpublish/console assets:install --symlink --env=prod
>php ezpublish/console ezpublish:legacy:assets_install --symlink --env=prod
>php ezpublish/console ezpublish:legacy:script bin/php/ezpgenerateautoloads.php --env=prod
>php ezpublish/console ca:cl --env=prod
>php ezpublish/console assetic:dump --env=prod
>php ezpublish/console ca:cl --env=prod


## eZ Publish 4
### count download SQL

``` sql
    SELECT original_filename,a.version,download_count, a.language_code, o.name,v.modified,
    CONCAT('/content/download/',a.contentobject_id,'/',a.id,'/version/',a.version,'/file/',original_filename) as url
    FROM ezbinaryfile b
    INNER JOIN ezcontentobject_attribute a ON a.id=b.contentobject_attribute_id AND a.version=b.version
    INNER JOIN ezcontentobject_name o ON a.contentobject_id=o.contentobject_id AND a.version=o.content_version AND a.language_id=o.language_id
    INNER JOIN ezcontentobject_version v ON o.contentobject_id=v.contentobject_id AND a.version=v.version
    ORDER by v.modified DESC;
``` 

### Si probleme avec urltransaltor :
    DELETE FROM ezurlalias_ml WHERE NOT( (ezurlalias_ml.lang_mask & 15 > 0)  AND is_original = 1  AND is_alias = 1) ;
    php bin/php/updateniceurls.php -v -s admin

### clear cache by grep
    find var/www/cache/template-block/ -name "*.cache" -exec grep -iHl "MONTEXTEDANSLECACHE" {} \; -delete

### ez publish fetch subtree avec class_identifier filter
``` php
    $subtree_equity=eZContentObjectTreeNode::subTreeByNodeID (
        array ('Limitation'  => array(),
            "IgnoreVisibility"=>true,
            'Depth' => 10,
            'Limit'=>10,
            'ClassFilterType'=>'include',
            'ClassFilterArray'=>array('defile')
        ), 1 );
``` 

### ez publish clear cache et reset datamap for preserve memory limit

``` php
    $node->object()->resetDataMap();
    eZContentObject::clearCache( array( $node->object()->attribute( 'id' ) ) );
    unset($node);
``` 

### accès ez publish ini du siteaccess admin

``` php
    eZINI::instance('site.ini','settings/siteaccess/admin/', null, null, false, true)->variable( 'SiteSettings', 'SiteURL' )
``` 
### logs customs

``` php
    eZLog::write( 'MON LOG :' . $error, date('Y-m-d') .'_file.log','var/log/folder' );
``` 

### nettoyage base de donnée

``` sql
    DELETE FROM ezworkflow_process;
    DELETE FROM ezoperation_memento;
``` 

### commandes utiles

    php bin/php/ezcache.php --clear-all
    php bin/php/ezpgenerateautoload.php

### ezcomponent generate persistante objects

    c:\wamp\bin\php\php5.3.0\php.exe c:\wamp\bin\php\php5.3.0\PEAR\ezc\PersistentObjectDatabaseSchemaTiein\rungenerator.php -t -o -p "prefix" -s mysql://root:@localhost/database -f mysql c:\test2\sql\ c:\test2\class\

### PATCH EZ 4 vers PHP5.6
``` patch
diff -rupN lib_original/ezutils/classes/ezmodulefunctioninfo.php lib/ezutils/classes/ezmodulefunctioninfo.php
--- lib_original/ezutils/classes/ezmodulefunctioninfo.php       2008-08-20 17:39:46.000000000 +0200
+++ lib/ezutils/classes/ezmodulefunctioninfo.php        2013-11-05 09:24:25.000000000 +0100
@@ -139,13 +139,13 @@ class eZModuleFunctionInfo
             return false;
         }
         $functionDefinition = $this->FunctionList[$functionName];
-        if ( !isset( $functionName['call_method'] ) )
+         if ( !isset( $functionDefinition['call_method'] ) )
         {
             eZDebug::writeError( "No call method defined for function '$functionName' in module '$moduleName'",
                                  'eZModuleFunctionInfo::execute' );
             return false;
         }
-        if ( !isset( $functionName['parameters'] ) )
+         if ( !isset( $functionDefinition['parameters'] ) )
         {
             eZDebug::writeError( "No parameters defined for function '$functionName' in module '$moduleName'",
                                  'eZModuleFunctionInfo::execute' );
@@ -184,13 +184,13 @@ class eZModuleFunctionInfo
             return null;
         }
         $functionDefinition = $this->FunctionList[$functionName];
-        if ( !isset( $functionName['call_method'] ) )
+         if ( !isset( $functionDefinition['call_method'] ) )
         {
             eZDebug::writeError( "No call method defined for function '$functionName' in module '$moduleName'",
                                  'eZModuleFunctionInfo::execute' );
             return null;
         }
-        if ( !isset( $functionName['parameters'] ) )
+         if ( !isset( $functionDefinition['parameters'] ) )
         {
             eZDebug::writeError( "No parameters defined for function '$functionName' in module '$moduleName'",
                                  'eZModuleFunctionInfo::execute' );
diff -rupN lib_original/ezutils/classes/ezmoduleoperationinfo.php lib/ezutils/classes/ezmoduleoperationinfo.php
--- lib_original/ezutils/classes/ezmoduleoperationinfo.php      2008-08-20 17:39:45.000000000 +0200
+++ lib/ezutils/classes/ezmoduleoperationinfo.php       2013-11-05 09:32:54.000000000 +0100
@@ -138,19 +138,19 @@ class eZModuleOperationInfo
             return null;
         }
         $operationDefinition = $this->OperationList[$operationName];
-        if ( !isset( $operationName['default_call_method'] ) )
+        if ( !isset( $operationDefinition['default_call_method'] ) )
         {
             eZDebug::writeError( "No call method defined for operation '$operationName' in module '$moduleName'",
                                  'eZModuleOperationInfo::execute' );
             return null;
         }
-        if ( !isset( $operationName['body'] ) )
+        if ( !isset( $operationDefinition['body'] ) )
         {
             eZDebug::writeError( "No body for operation '$operationName' in module '$moduleName'",
                                  'eZModuleOperationInfo::execute' );
             return null;
         }
-        if ( !isset( $operationName['parameters'] ) )
+        if ( !isset( $operationDefinition['parameters'] ) )
         {
             eZDebug::writeError( "No parameters defined for operation '$operationName' in module '$moduleName'",
                                  'eZModuleOperationInfo::execute' );

``` 

Problème des packages
http://share.ez.no/forums/install-configuration/ez-4.7-installation-package-step-problem

``` patch
ez/kernel/classes/ezpackage.php

 @@ -1137,7 +1137,7 @@ class eZPackage
             // Search for the files we want to extract
             foreach( $archive as $entry )
             {
-                if ( in_array( $entry->getPath(), $fileList ) )
+                if ( in_array( trim($entry->getPath(),DIRECTORY_SEPARATOR), $fileList ) )
                 {
                     if ( !$archive->extractCurrent( $archivePath ) )
                     {

lib/ezc/Archive/src/entry.php

 @@ -196,11 +196,11 @@ class ezcArchiveEntry
     {
         if ( $withPrefix )
         {
-            return $this->fileStructure->path;
+            return trim($this->fileStructure->path);
         }
         else
         {
-            return $this->getPathWithoutPrefix( $this->fileStructure->path, $this->prefix );
+            return $this->getPathWithoutPrefix( trim($this->fileStructure->path), $this->prefix );
         }
     }
``` 


## Solr

### démarrer solr 6 :

    cd solr-6.4.2/
    bin/solr start

### démarrer solr 4.9 :

    cd ./solr-4.9.1/example/

### démarrer solr eZ Publish:

    cd ./extension/ezfind/java
    java -Dezfind -jar start.jar

### indexation ezpublish 4 :

    php extension/ezfind/bin/php/updatesearchindexsolr.php -s admin --clean

### indexation ezpublish 5 :

    php ezpublish/console ezpublish:legacy:script extension/ezfind/bin/php/updatesearchindexsolr.php --siteaccess=site_admin --php-exec=/usr/bin/php--env=prod

### indexation ezplatform :

    php app/console --env=prod --siteaccess=<name> ezplatform:solr_create_index
    php app/console --env=prod --siteaccess=<name> ezplatform:reindex

### Exemple d'utilisation de l'API en direct

    curl http://localhost:8983/solr/select/?q=meta_class_identifier_ms:%22MA_CLASSE%22

---------

## SQL

### MySQL taille db et tables

``` sql
    SELECT table_schema "Databases", sum( data_length + index_length) / 1024 / 1024 "Size of DB in MB" 
    FROM information_schema. TABLES GROUP BY table_schema;
``` 

### MySQL taille DB

``` sql
    SELECT table_name AS "Tables", round(((data_length + index_length) / 1024 / 1024), 2) AS "Size (MB)"
    FROM information_schema.tables
    WHERE table_schema =  'DB_NAME';
``` 

### Créer un update SQL avec un select

``` sql
    SELECT CONCAT('UPDATE table SET champ1=',champ1,',champ2=',champ2,',champ3=',champ3,' WHERE champ0="',REPLACE(champs,'DC','DD'),'"' ) as query 
    FROM table 
    WHERE champ LIKE 'DC%';
``` 

### MySQL DATE CONVERSION TIMESTAMP
``` sql
    SELECT *,FROM_UNIXTIME(created) 
    FROM `table`
    WHERE Date(FROM_UNIXTIME(created))>DATE('2017-08-15 00:00:01')
        AND Date(FROM_UNIXTIME(created))<DATE('2017-10-06 00:00:01')
``` 


### MySQL UPDATE avec inner jointures
``` sql
    UPDATE table as t1 
    INNER JOIN table2 as t2 ON t1.xxx_id=t2.id 
    SET  t1.yyyy=""
    WHERE t2.xxxx>0;
``` 

### MySQL RegExp and Replace
``` sql						
    UPDATE `ezcontentobject_attribute` t1 
    JOIN `database`.`ezcontentobject_attribute` t2 
        ON t1.id = t2.id AND t1.version = t2.version AND (
            t2.data_text REGEXP 'abcdef_[[:digit:]]+_fr'
        ) 
    SET t1.data_text = REPLACE( t1.data_text, '_fr', '' ) ;	
``` 

### Exporter une table SQL en CSV

``` zsh
    mysql -B -u user -p --default-character-set=utf8 database -e "SELECT * FROM table;" |sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > table.csv
``` 


### MySQL dump avec compression gz
``` shell
    mysqldump -u user -p pass mabase | gzip -v > mabase.gz
``` 

### MySQL importer un dump
``` shell
    mysql -u user -p --default-character-set=utf8 --max_allowed_packet=64M mabase < ~/mabase.sql
``` 


### PostgreSQL : Installer et configuration de Symfony

	sudo apt-get install postgresql postgresql-client
	sudo apt-get install php7.4-pgsql

	sudo passwd postgres
	su postgres
	psql
	postgres=# help
	postgres=# CREATE USER USERNAME WITH PASSWORD 'xxx';
	postgres=# CREATE DATABASE "DATABASENAME";
	postgres=# GRANT ALL ON DATABASE "DATABASENAME" TO USERNAME;

	nano .env.locale 
	DATABASE_URL=postgresql://USERNAME:xxx@127.0.0.1:5432/DATABASENAME?serverVersion=11&charset=utf8

### Dump / import PostgreSQL

	pg_dump -U user -h localhost  -Fc database > database.sql
	pg_restore -d database  -U user -h localhost -v -c  database.sql
	

------

## Vagrant
### ACCES MYSQL LOCAL VAGRANT

    SSH into your Vagrant: vagrant ssh
    Change to root user sudo su
    Log as root user to your MySQL DB: mysql -uroot
    Run the following queries (don't forget to replace yourdatabase, _youruser_ and your\password_):
    GRANT ALL PRIVILEGES ON your_database.* TO 'your_user'@'127.0.0.1' identified by 'your_password';
    FLUSH PRIVILEGES;
    You now have granted your user to login to using the host "127.0.0.1"
    You can now go to PhpStorm and test your connection again and it should work!

### MOUNT NAS vagrant :

    sudo apt-get install cifs-utils
    sudo mount -t cifs -o noperm,user=$userinput //X.X.X.X/a/b/c web/var/site

## Docker 
### Convert video avec handbrake :

    docker run -d \
        --name=handbrake \
        -p 5800:5800 \
        -v /Users/user/docker/HandBrake/config:/config:rw \
        -v /Users/user/docker/HandBrake:/storage:ro \
        -v /Users/user/docker/HandBrake/watch:/watch:rw \
        -v /Users/user/docker/HandBrake/output:/output:rw \
        jlesage/handbrake

UI :

    http://localhost:5800/

### Drop table au démarrage docker :

    "post-install-cmd": [
    "php bin/console doctrine:schema:drop --force --env=dev",
    "@symfony-scripts"
    ],
### docker lancé alpine en mode interactif
    docker run --name=container-alpine -it alpine ash

### liste tous les container dejà lancé
    docker ps -a

### run and rm direct
    docker run --name=container-halloween -it --rm docker/doodle:halloween

### partage de volume
    docker run -it --rm --volume $PWD:/work --workdir /work alpine /bin/ash

### webpack
    docker run --name=webpack -it --rm --volume $PWD:/work --workdir /work egymgmbh/webpack-builder


### hub des truc installable

https://hub.docker.com/_/php?tab=description&page=141

### faire de la place dans docker
    docker image prune -a --filter "until=2020-01-01"

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

### alias .bash_profile 

ajout / modification

    nano .bash_profile
    source .bash_profile
    
    alias php73='brew unlink php@{5.6,7.0,7.1,7.2,7.3} && brew link php@7.3 --force'

## VueJS

    npm install -g @vue/cli
    vue ui


---------

## Sécurité

### Blocage par fichier hosts

* https://github.com/StevenBlack/hosts
* http://someonewhocares.org/hosts/

### Google DNS

For IPv4:

    nameserver 8.8.8.8
    nameserver 8.8.4.4

For IPv6:

    nameserver 2001:4860:4860::8888
    nameserver 2001:4860:4860::8844

### liste toutes les ips
    arp -a

### Nmap

Scan + scan des ports :

    sudo nmap -O -v X.X.X.X
    sudo nmap -sV -O -v X.X.X.X
    sudo nmap -p0-65535  -v X.X.X.X

Scan plage d'IP :

    nmap  X.X.X.1-30
    sudo nmap X.X.X.1/255 -sU

### Outils

#### wmap dans metasploit

    docker run --name=metasploit -it --rm strm/metasploit
    load wmap
    msf5 > wmap_sites -a http://X.X.X.X
    msf5 > wmap_targets -t http://X.X.X.X
    msf5 > wmap_run -t
    msf5 > wmap_run -e
    exit

#### ne fonctionne pas ?

    git clone https://github.com/swisskyrepo/Wordpresscan.git
    cd Wordpresscan
    virtualenv .venv -p /usr/bin/python2.7
    source .venv/bin/activate
    pip install -r requirements.txt
    python wordpresscan.py -u "https://www.xxxxx.x/" --update --random-agent


    git clone https://github.com/delvelabs/vane.git
    docker build -t vane .
    docker run --rm vane --help
    docker run --rm vane  --url https://www.xxxxx.x/

#### xsstrike (fonctionne) :

    docker run --name=xssstrike -it --rm femtopixel/xsstrike -u http://www.xxxx.x --crawl --blind

#### openvas (fonctionne) :

    docker run --rm -v $(pwd):/openvas/results/ ictu/openvas-docker /openvas/run_scan.py 1.2.3.X,www.xxxx.x openvas_scan_report

#### zap (fonctionne) :

    docker run --rm -v $(pwd):/zap/wrk/:rw -t ictu/zap2docker-weekly zap-baseline.py  -t http://www.xxxx.x -r testreport.html

#### sn1per (fonctionne bien) :

    docker run --name=sn1per -v $(pwd):/usr/share/sniper/loot/workspace/:rw  -it --rm xerosecurity/sn1per

NORMAL MODE

    sniper -t  http://www.xxx.x

version spécial web plus longue :

    sniper -t http://www.xxx.x -m web

#### autres
XSSer

    docker run --rm -v "$(pwd)":/wd -w /wd jamesmstone/xsser -u "http://www.xxx.x/"

NE MARCHE PAS pour certains sites :

    docker run --rm --name lighthouse -it -v $(pwd):/home/chrome/reports  --cap-add=SYS_ADMIN femtopixel/google-lighthouse http://xxx.x/

https://github.com/jeremylong/DependencyCheck

    docker run --rm -v <project_source>:/tmp/src -v <report_destination_directory>:/tmp/reports -w /tmp/reports ictu/owasp-dependency-check

slowhttptest

https://github.com/shekyan/slowhttptest/wiki
 
src/slowhttptest -c 5 -B -i 10 -r 1 -s 2014 -t TEST -u https://www.xxx.x/ -x 10 -p 5

src/slowhttptest -c 10 -X -r 1 -w 10 -y 20 -n 5 -z 32 -u https://www.xxx.x/  -p 5 -l 350

#### Outils de test de sécurité online

1. Qualys SSL Labs - outils de test de sécurité SSL :
   https://www.ssllabs.com/ssltest/analyze.html?d=https://www.xxx.x/

2. Analyse failles de sécurité d'un serveur Web :
   https://www.shodan.io/host/1.2.3.X

3. Analyse failles de sécurité pentest-tools
   https://pentest-tools.com/website-vulnerability-scanning/website-scanner

4. Tests des ports ouverts online :
   https://gf.dev/port-scanner

5. Test de charge :
   https://www.blazemeter.com

6. Status de sécurité
   https://sitecheck.sucuri.net/results/xxx.x

7. Status Google :
   https://transparencyreport.google.com/safe-browsing/search?url=https:%2F%2Fxxx.x%2F


#### snyk

https://app.snyk.io/

    brew tap snyk/tap
    brew install snyk
    
    snyk auth
    
    snyk monitor



#### Liens utiles

https://tools.kali.org/web-applications/grabber
https://tools.kali.org/web-applications/xsser
https://github.com/s0md3v/XSStrike
https://github.com/h3xstream/burp-retire-js

Plein de truc intéressant :

https://github.com/ICTU/security-tooling

WAFW00F, CRTSH, metasploit, nmap, tracerout, nslookup, whois, dnsinfo,bruteX,Yasuo,cutycap,InUrlBR,hydra))
https://hub.docker.com/r/szalek/pentest-tools/
=> uniscan + xsssniper + wpscan  + sn1per
SNIPER : use xerosecurity/sn1per, meilleur (voir ci dessous)

## SEO : List d'outils pratiques online pour l'optimisation de sites internet

### Extraction des recherches bing dans les logs apache ou nginx :

	awk '($11 !~ /^"?-?"?$/ && $11 !~ /monsite.com/) {print $11}' httpd-access.log | grep 'q='  > bingsearch.csv


### Google Analytics dans un email

Image avec en SRC :
https://www.google-analytics.com/collect?v=1&tid=UA-XXXXX&cid=1260961011.1389432370&t=event&ec=Test-event-cat&ea=Test-event-action&el=test-label&ev=1

### Outils d’analyse de site Internet complets

1. Alexa (site ranking) :
   https://www.alexa.com/siteinfo/xxx.x
   https://www.alexa.com/minisiteinfo/xxx.x?offset=5&version=alxg_20100607

2. Site indices la valeur
   https://xxx.x.siteindices.com/

3. Cutestat : Web Analysis complet
   https://xxx.x.cutestat.com/

4. urlscan.io : outils de scan complet
   https://urlscan.io/domain/www.xxx.x
   https://urlscan.io/ip/1.2.3.X

5. SPyfu
   https://www.spyfu.com/overview/domain?query=xxx.x

6. Cuddomain : test tout avec pleins de liens
    https://www.cubdomain.com/site/xxx.x

### Outils de tests d’amélioration de site Internet / SEO

1. Lighthouse rapport complet :
   https://lighthouse-ci.appspot.com/try
   https://lighthouse-dot-webdotdevsite.appspot.com/lh/html?url=http://www.xxx.x/

2. Google PageSpeed Insights :
   https://developers.google.com/speed/pagespeed/insights/?url=https%3A%2F%2Fwww.xxx.x&tab=mobile

3. Google test d'optimisation mobile (test mobile friendly) :
   https://search.google.com/test/mobile-friendly?url=https://www.xxx.x/

4. Clearwebstats
   https://xxx.x.clearwebstats.com/
   https://www.clearwebstats.com/process.php?q=https%3A%2F%2Fwww.xxx.x%2F&t=auto

5. gtmetrix.com
   https://gtmetrix.com/

6. Validation W3C du code HTML :
   https://validator.w3.org/nu/?doc=https%3A%2F%2Fwww.xxx.x%2F

7. validation W3C du CSS :
   http://jigsaw.w3.org/css-validator/validator?profile=css3&warning=0&uri=https://www.xxx.x/

8. Outils de test d'accessibilité :
   http://wave.webaim.org/report#/https%3A%2F%2Fwww.xxx.x

9. Similar web:
   https://www.similarweb.com/website/xxx.x


--------

## Raspberry
### send signal radio
    python3 send.py  5393

-------

## Design pattern
### Classe 

Si VELO attribut ROUE, se posser la question : Madame VELO que fait votre ROUE ?
Classe doit faire une seule chose => SOLID => single responsability
