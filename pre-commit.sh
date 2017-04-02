#!/bin/sh

rm -rf output_prod
rm -rf docs
php ../sculpin/bin/sculpin generate --env=prod
mkdir docs
cp -R /c/devweb/htdocs/recepty.martinhujer.cz/output_prod/* /c/devweb/htdocs/recepty.martinhujer.cz/docs
git add -A
