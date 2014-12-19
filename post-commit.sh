#!/bin/sh

rm -rf output_prod
php /c/xampp/php/sculpin.phar generate --env=prod
rm -rf /c/xampp/htdocs/recepty.martinhujer.cz-pages/*
cp -R /c/xampp/htdocs/recepty.martinhujer.cz/output_prod/* /c/xampp/htdocs/recepty.martinhujer.cz-pages/
cd /c/xampp/htdocs/recepty.martinhujer.cz-pages/
git add -A
git commit -a -m "Update"
git push origin gh-pages:gh-pages
