#!/bin/sh

npm run build
sudo rm -rf /var/www/fada
sudo cp -r dist/ /var/www/fada
