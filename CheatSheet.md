
[Symfony-ApiPlatform-Doctrine](CheatSheet-Symfony-ApiPlatform-Doctrine.md)
-------

[Unix-Composer-Git](CheatSheet-Unix-Composer-Git.md)
-------

[MySql-PostgreSQL-SQLite](CheatSheet-MySql-PostgreSQL-SQLite.md)
-------

[Securite-Outils](CheatSheet-Securite-Outils.md)
-------

[Docker-Vagrant](CheatSheet-Docker-Vagrant.md)
-------

[Brew-MacOsx-Phpstorm](CheatSheet-Brew-MacOsx-Phpstorm.md)
-------

[eZ-zeta-Solr](CheatSheet-eZ-zeta-Solr.md)
-------

## VueJS

    npm install -g @vue/cli
    vue ui

--------

## Raspberry
### send signal radio
    python3 send.py  5393

-------


## Performance tunning
Symfony[https://symfony.com/doc/current/performance.html]

        //mettre entre cache les réponses
        $response->setPublic();
        $response->setMaxAge($cache);
        $response->headers->set(AbstractSessionListener::NO_AUTO_CACHE_CONTROL_HEADER, 'true');
        
PHP

        sudo nano /etc/php/8.2/fpm/pool.d/www.conf
        pm.max_children = 40 # RAM / RSS column
        pm.start_servers = 15
        pm.min_spare_servers = 15
        pm.max_spare_servers = 25
        pm.max_requests = 500

        
PostgreSQL[https://bun.uptrace.dev/postgres/performance-tuning.html#work-mem]

    sudo nano /etc/postgresql/11/main/postgresql.conf 
    shared_buffers = 1536MB                 # min 128kB
    work_mem = 153MB                                # min 64kB
    maintenance_work_mem = 765MB            # min 1MB

MariaDB[https://mariadb.com/kb/en/configuring-mariadb-for-optimal-performance/]


Nginx + fastcgi cache + geoip  https://gist.github.com/vedmant/524a3bb179cb22fe0c8dbe615f463589

    sudo apt install libnginx-mod-http-geoip2
    wget https://git.io/GeoLite2-Country.mmdb
    sudo nano /etc/nginx/nginx.conf
    
    worker_rlimit_nofile 30000; #tune max open same time
    worker_processes 4; #numbers of CPU
    ...
    events {
        worker_connections 2048;
        #multi_accept on;
        ...
        geoip2 /home/root/GeoLite2-Country.mmdb {
              $geoip2_data_country_iso_code country iso_code;
        }
        ...
        #uncomments lines "gzip on" to "gzip_types"
        gzip on;
        gzip_min_length 500;
        gzip_vary on;
        gzip_proxied any;
        gzip_comp_level 6;
        gzip_buffers 16 8k;
        gzip_http_version 1.1;
        gzip_types text/plain text/css application/json application/javascript text/xml application/xml application/xml+rss text/javascript;
    }

    sudo nano /etc/nginx/sites-available/default 
    fastcgi_cache_path /tmp/fcgicache levels=1:2 keys_zone=project_fcgicache:500m inactive=120m max_size=50G use_temp_path=off;
    
    server {
    ...
    set $skip_cache 0;
    # POST requests should always go to PHP
    if ($request_method = POST) {
        set $skip_cache 1;
    }
    ...
    location ~ ^/index\.php(/|$) {
    
        #add fastcgi cache
        fastcgi_cache project_fcgicache;
        fastcgi_cache_bypass $skip_cache;
        fastcgi_no_cache $skip_cache;
        fastcgi_cache_key "$scheme$request_method$host$request_uri$args$geoip2_data_country_iso_code";
        fastcgi_cache_valid 200 60m;
        fastcgi_ignore_headers Cache-Control Expires Set-Cookie Vary;
        
        fastcgi_pass unix:/var/run/php/php8.2-fpm.sock;
        fastcgi_split_path_info ^(.+\.php)(/.*)$;
        include fastcgi_params;

        fastcgi_read_timeout 60;
        fastcgi_intercept_errors    on;
        fastcgi_ignore_client_abort off;
        fastcgi_connect_timeout     3s;
        fastcgi_buffer_size         128k;
        fastcgi_buffers             128 16k;
        fastcgi_busy_buffers_size   256k;
        fastcgi_temp_file_write_size 256k;
        reset_timedout_connection on;

        fastcgi_param SCRIPT_FILENAME $realpath_root$fastcgi_script_name;
        fastcgi_param DOCUMENT_ROOT $realpath_root;
        internal;
    }

    location ~* ^/build/.*\.(css|js|png|jpeg|gif|png|ico|cur|gz|svg|svgz|mp4|mp3|ogg|ogv|webm|htc|woff2|woff)$ {
        expires 1y;
        access_log off;
        add_header Cache-Control "max-age=31536000, public";
    }
    ...

    sudo nano /etc/security/limits.conf
    www-data soft nofile 5000
    www-data hard nofile 5000
    sudo sysctl -p

-------
