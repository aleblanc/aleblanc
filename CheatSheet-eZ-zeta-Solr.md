

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

----------


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
