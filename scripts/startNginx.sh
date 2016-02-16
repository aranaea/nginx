#!/usr/bin/env bash

if [ -z $PHP_HOST ]; then
    prnitf "PHP_HOST is unset!!  Can not map upstream!\n"
fi

sed -i "s/{{php-host}}/$PHP_HOST/g" /etc/nginx/sites-available/default
nginx
