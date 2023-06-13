
## API Platform

### Générer les clef pour JWT

	openssl genrsa -out config/jwt/private.pem -aes256 4096
	openssl rsa -pubout -in config/jwt/private.pem -out config/jwt/public.pem
ou

	 php bin/console lexik:jwt:generate-keypair

### Générer les secrets pour JWT

	php bin/console secrets:generate-keys
	php bin/console secrets:set JWT_PASSPHRASE
	php bin/console secrets:set JWT_SECRET_KEY config/jwt/private.pem
	php bin/console secrets:set JWT_PUBLIC_KEY config/jwt/public.pem

## Symfony

### Security checker

    wget -O local-php-security-checker "https://github.com/fabpot/local-php-security-checker/releases/download/v1.0.0/local-php-security-checker_1.0.0_darwin_amd64"
    chmod 777 local-php-security-checker
    ./local-php-security-checker

NB : take last release here : https://github.com/fabpot/local-php-security-checker/releases/

Or use Packagist Security Checker from Github advisory database :

    composer require aleblanc/security-checker --dev
    php vendor/aleblanc/security-checker/security-checker security:check


### PHP CS

    wget https://cs.symfony.com/download/php-cs-fixer-v3.phar
    php php-cs-fixer.phar  self-update
    php php-cs-fixer.phar fix -v src/ --config=.php-cs-fixer.php
    php php-cs-fixer.phar fix -v src/ --rules=@Symfony


Configuration .php-cs-fixer.php :

``` php
$config = new PhpCsFixer\Config();

$config->setRules(array_merge($config->getRules(), [
    '@Symfony' => true,
    'ordered_imports' => ['imports_order' => ['class', 'function', 'const'], 'sort_algorithm' => 'none'],
    'full_opening_tag' => false,
]));

return $config;
```


### Installer une version beta de Symfony

    curl -s https://getcomposer.org/installer | php
    php composer.phar create-project symfony/skeleton:"^5.4"  symfony-project -s dev

### Lister tous les paramètres possibles 

    php bin/console debug:container --parameters

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
