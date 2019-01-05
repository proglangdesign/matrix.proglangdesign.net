#!/bin/sh
ROOT_PATH=`pwd`
sudo ln -s $ROOT_PATH/config/nginx/sites-available/matrix.qipl.org /etc/nginx/sites-enabled/
sudo service nginx reload
