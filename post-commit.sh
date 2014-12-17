#!/bin/sh

rm -rf output_prod
php /c/xampp/php/sculpin.phar generate --env=prod
rm -rf /c/xampp/recepty.martinujer.cz-pages/*
cp -R /c/xampp/htdocs/recepty.martinujer.cz/output_prod/* /c/xampp/htdocs/recepty.martinujer.cz-pages/
cd /c/xampp/htdocs/recepty.martinujer.cz-pages/
git commit -a -m "Update"
git push origin gh-pages:gh-pages
