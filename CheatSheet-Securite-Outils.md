
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

Scan IP sur le reseau local :

    sudo nmap -sP 192.168.0.0/10

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

1. Hypestat :
   https://hypestat.com/info/xxx.x

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

