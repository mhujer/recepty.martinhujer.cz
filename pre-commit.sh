#!/bin/sh

rm -rf output_prod
rm -rf docs
php ../sculpin/bin/sculpin generate --env=prod
mkdir docs
cp -R /c/xampp/htdocs/recepty.martinhujer.cz/output_prod/* /c/xampp/htdocs/recepty.martinhujer.cz/docs
git add -A
