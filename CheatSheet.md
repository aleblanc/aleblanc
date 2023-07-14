
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

Nginx 

    sudo nano /etc/nginx/nginx.conf
    worker_processes 4;
    ...
    events {
        worker_connections 1024;
        #multi_accept on;
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
    ...
    location ~ ^/index\.php(/|$) {
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

-------
