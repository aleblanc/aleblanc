
## UNIX

### Upgrade Debian bullseye vers bookworm

1. backup db / configuration nginx / snapshot system
2. Trouver l'UUID et Désactiver FSCK (sinon donwtime de 2h possible)

```
	sudo blkid
	sudo nano /etc/fstab
	UUID=1234456-1234-1234-1234-123456789 /dev/sda2          ext4    defaults        0       0
```

4. Update bulleye
```
	screen -R upgrade
	sudo service cron stop
	sudo service nginx stop
	sudo service php8.2-fpm stop
	sudo service postgresql stop
	sudo systemctl stop elasticsearch
	sudo service cron status
	sudo service nginx status
	sudo service php8.2-fpm status
	sudo service postgresql status
	sudo systemctl status elasticsearch
	sudo apt-get update -y
	sudo apt-get upgrade
	sudo apt-get dist-upgrade
	sudo apt-get autoremove
	sudo apt-get clean
	sudo reboot
	lsb_release -a
```
5. Remplacer bullseye par bookworm dans
```
	sudo nano /etc/apt/sources.list
	sudo nano /etc/apt/sources.list.d/*.list
	screen -R upgrade
	sudo apt-get update -y
	sudo apt upgrade --without-new-pkgs
	sudo apt-get full-upgrade
	sudo apt --purge autoremove
	sudo reboot
	lsb_release -a
```
### installer php 8.2 en une ligne 

	sudo apt-get install php8.2-{common,cli,fpm,intl,bcmath,mbstring,curl,xsl,pdo-sqlite,gd,zip,pgsql}
 
### CURL proxy / vpn gratuit avec opera-proxy et hola-proxy

	wget https://github.com/Snawoot/opera-proxy/releases/download/v1.2.4/opera-proxy.darwin-amd64
	chmod +x opera-proxy.darwin-amd64
	./opera-proxy.darwin-amd64 -list-countries
	./opera-proxy.darwin-amd64 -country AS -list-proxies
	curl --proxy "https://BE2EF901005F08F420B54AD3BA13CB955245A1A3:eyJhbGciOiJFQ0RILUVTK0EyNTZLVyIsImN0eSI6IkpXVCIsImVuYyI6IkEyNTZHQ00iLCJlcGsiOnsia3R5IjoiRUMiLCJjcnYiOiJQLTI1NiIsIngiOiJvU2FBbXphcWl2QXdfMzRjQkp5SGktbFZfTmZrc3BGV2NDaUVqM0hFOFZFIiwieSI6InZLUDdQYklGODViSWo4S0QxajRpU3ZXbmh1X3RXUGxzX3BkeDExRkVBTXMifX0.WFKr7hUyjcERZ5UnBArUHyZY7Pg5wL5QhoAJ9Dul9PU8mcZYeq8pkA.udpIoWC5kEGVRXd9.0evqWSBxgy7_90RjKKKn-ieZHbrFESbXEa825pKH1RthCrNvq4yFYaNAtqhA0oVhf8JQXbfw_jdD7-ouw_9M4j0GMTWB9NrNZTtXo1PTT2nqND3BgcoZwe40eJUfWNrz8YmnudEVrpnND_zYdnTGW23nfFxGYJhiYYJMJAQBPTfK3GCXGQUX8wuZ8PeXKgGLkFshk1Z0jPtuC79mFZt_fLwTuJyBmF_E_6joDMwFGhtHSbBeQ50QkJt5wadstpqJe50hpLhVDRCWc_tVshnkCJSym5Q_fc5ZML8fv6q9Z4YtfEFsk5VxZQZnV0VF308Zt0gMuEL9ENgdgy3f-MywvcjBZGLFJ8vA8r5-7v4EyipjQmMtudTBQa5Iz-K80G5np3CNbmyEk7sE97q7uJzKxZvzpHiLd5aY_CxRiS8YfchjCxQ5esW3COBZI9g_gTviOEQJFXCOMw.Ne1xm_5-O15pldC59mZWkA@as0.sec-tunnel.com" --resolve as0.sec-tunnel.com:443:77.111.245.10  https://ifconfig.me ; echo


	wget https://github.com/Snawoot/hola-proxy/releases/download/v1.9.1/hola-proxy.darwin-amd64
	chmod +x hola-proxy.darwin-amd64
	./hola-proxy.darwin-amd64  -list-countries
	./hola-proxy.darwin-amd64 -country nz -list-proxies -limit 3
	curl --proxy https://user-uuid-6687622bcdaf4efeab663be406dd18eb:6ae8a179cd33@zagent2645.hola.org:22222 https://ifconfig.me ; echo


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

### TAR evec exclude

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

### Yarn security audit

    yarn audit --level high
    yarn audit --level moderate

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
	sudo apt install lsb-release
	wget -O - https://deb.goaccess.io/gnugpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/goaccess.gpg >/dev/null
	echo "deb [signed-by=/usr/share/keyrings/goaccess.gpg arch=$(dpkg --print-architecture)] https://deb.goaccess.io/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/goaccess.list
	sudo apt-get update
	sudo apt-get install goaccess
	sudo apt install goaccess
	sudo su 
	cd /tmp
	wget https://git.io/GeoLite2-City.mmdb
	wget  https://git.io/GeoLite2-ASN.mmdb
	crontab -e
	49 4 * * * /bin/zcat -f /var/log/nginx/project_access* | /usr/bin/goaccess --ignore-crawlers --log-format=COMBINED --no-global-config --geoip-database=/tmp/GeoLite2-ASN.mmdb --geoip-database=/tmp/GeoLite2-City.mmdb -o /tmp/goaccess_report.html - && chmod 777 /tmp/goaccess_report.html

### configuration logrotate sur nginx

	nano /etc/logrotate.d/nginx
	logrotate  /etc/logrotate.d/nginx

### nginx enbale gzip compression

    sudo nano /etc/nginx/nginx.conf
    #uncomments lines "gzip on" to "gzip_types"

### tune nginx 

	sudo nano /etc/nginx/nginx.conf

	worker_processes 4;
	...
	events {
	    worker_connections 1024;
	    multi_accept on;
	}

	sudo service nginx restart

## Script avoir l'IP réelle de cloudflare

	#!/bin/bash
	
	echo "#Cloudflare ip addresses" > /etc/nginx/conf.d/00_real_ip_cloudflare_00.conf;
	echo "" >> /etc/nginx/conf.d/00_real_ip_cloudflare_00.conf;
	
	echo "# - IPv4" >> /etc/nginx/conf.d/00_real_ip_cloudflare_00.conf;
	for i in `curl https://www.cloudflare.com/ips-v4`; do
	        echo "set_real_ip_from $i;" >> /etc/nginx/conf.d/00_real_ip_cloudflare_00.conf;
	done
	
	echo "" >> /etc/nginx/conf.d/00_real_ip_cloudflare_00.conf;
	echo "# - IPv6" >> /etc/nginx/conf.d/00_real_ip_cloudflare_00.conf;
	for i in `curl https://www.cloudflare.com/ips-v6`; do
	        echo "set_real_ip_from $i;" >> /etc/nginx/conf.d/00_real_ip_cloudflare_00.conf;
	done
	
	echo "" >> /etc/nginx/conf.d/00_real_ip_cloudflare_00.conf;
	echo "real_ip_header CF-Connecting-IP;" >> /etc/nginx/conf.d/00_real_ip_cloudflare_00.conf;

service nginx configtest && service nginx reload

### augmenter performance de PHP : definir valeur de la pool de php-fpm

	ps -ylC php-fpm8.1 --sort:rss
	ps -ylC php-fpm7.4 --sort:rss
	sudo nano /etc/php/8.1/fpm/pool.d/www.conf
	sudo nano /etc/php/7.4/fpm/pool.d/www.conf

	pm.max_children = 40 # RAM / RSS column
	pm.start_servers = 15
	pm.min_spare_servers = 15
	pm.max_spare_servers = 25
	pm.max_requests = 500

	sudo service php8.1-fpm restart
	sudo service php7.4-fpm restart

### Installer munin

	sudo apt-get install munin munin-node
	cd /var/www/site/html/
	sudo ln -s /var/cache/munin/www/ munin

### Installer argos-translate (traduction offline)

	sudo apt install build-essential libncurses5-dev zlib1g-dev libnss3-dev libgdbm-dev libssl-dev libsqlite3-dev libffi-dev libreadline-dev curl libbz2-dev
	sudo wget https://www.python.org/ftp/python/3.9.9/Python-3.9.9.tgz
	tar -xvf Python-3.9.9.tgz
	cd Python-3.9.9
	sudo apt-get install liblzma-dev
	sudo apt-get install lzma
	./configure --enable-optimizations
	make -j 4
	sudo make altinstall
	python3.9 --version
	python3.9 -m pip install argostranslate
	python3.9  /var/www/.local/bin/argospm update
	python3.9  /var/www/.local/bin/argospm install translate-en_fr
	python3.9  /var/www/.local/bin/argos-translate --from-lang en --to-lang fr "Big chains are advertising it"


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
    php73  -d memory_limit=-1 composer.phar install
    php73  -d memory_limit=-1 /usr/local/bin/composer install

### composer list outdated packages

    composer info -o

### mise à jour symfony avec composer

	composer update "symfony/*" --with-all-dependencies
	composer recipes:update


### ajouter repo privé dans composer.json

forker un repo symfony5 pour le rendre compatible Symfony6 , faire les modification de composer.json à la main::

``` json
	"repositories": [
	        {
	            "type": "package",
	            "package": {
	                "name": "bomo/ical-bundle",
	                "version": "dev-master",
	                "autoload": {
	                    "psr-4": { "BOMO\\IcalBundle\\": "" }
	                },
	                "type": "package",
	                "source": {
	                    "url": "https://github.com/aleblanc/IcalBundle.git",
	                    "type": "git",
	                    "reference": "master"
	                }
	            }
	        }
	],
	...
	,
	"bomo/ical-bundle": "dev-master"

```

    composer update

-----

## Git

### Copy github repo in gitlab repo with all history

	  mkdir copy
	  cd copy/
	  git clone --mirror git@github.com:xxx/yyy.git ./
	  git tag
	  git branch -a
	  git remote rm origin
	  git remote add origin git@gitlab.com:xxx/yyy.git
	  git push origin --all
	  git push --tags

### create patch

    git patch diff
    git diff commitid1 commitid2 --no-prefix > patch.txt


### annuler un merge et revenir sur un master propre

    git merge --abort
    git branch -D master
    git checkout master

### erreur sparse checkout 

    git sparse-checkout disable 

### reset de merge et de commit 

    git reset --hard origin/staging

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

