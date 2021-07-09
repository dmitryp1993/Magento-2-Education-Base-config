#!/bin/bash

PHP=$(which php);

FILE=n98-magerun2.phar
if test ! -f "$FILE"; then
    $(wget 'https://files.magerun.net/n98-magerun2.phar')
fi

echo 'SET web/secure/use_in_frontend -> 0'
$PHP bin/magento config:set 'web/secure/use_in_frontend' 0

echo 'SET web/secure/enable_hsts -> 0'
$PHP bin/magento config:set 'web/secure/enable_hsts' 0

echo 'SET web/secure/use_in_adminhtml -> 0'
$PHP bin/magento config:set 'web/secure/use_in_adminhtml' 0

echo 'SET dev/js/merge_files -> 0'
$PHP bin/magento config:set 'dev/js/merge_files' 0

echo 'SET dev/js/enable_magepack_js_bundling -> 0'
$PHP bin/magento config:set 'dev/js/enable_magepack_js_bundling' 0

echo 'SET dev/js/minify_files -> 0'
$PHP bin/magento config:set 'dev/js/minify_files' 0

echo 'SET dev/css/minify_files -> 0'
$PHP bin/magento config:set 'dev/css/minify_files' 0

echo 'SET dev/css/merge_css_files -> 0'
$PHP bin/magento config:set 'dev/css/merge_css_files' 0

echo 'SET dev/css/use_css_critical_path -> 0'
$PHP bin/magento config:set 'dev/css/use_css_critical_path' 0

echo 'SET dev/js/move_script_to_bottom -> 0'
$PHP bin/magento config:set 'dev/js/move_script_to_bottom' 0

echo 'Disable admin recaptcha'
$PHP bin/magento msp:security:recaptcha:disable

if [ ! -z "$1" ]
  then
    echo 'SET web/unsecure/base_url -> '$1
    $PHP bin/magento config:set 'web/unsecure/base_url' $1

    echo 'SET web/secure/base_url -> '$1
    $PHP bin/magento config:set 'web/secure/base_url' $1

    echo 'SET web/unsecure/base_url -> '$1
    $PHP bin/magento config:set 'web/unsecure/base_link_url' $1

    echo 'SET web/secure/base_link_url -> '$1
    $PHP bin/magento config:set 'web/secure/base_link_url' $1
fi
if [ ! -z "$2" ]
  then
    echo 'Change password for user '$2
    $PHP n98-magerun2.phar admin:user:change-password $2 teSt231
fi

echo 'Cache clean'
$PHP bin/magento c:f

exit;
