#!/bin/bash

if systectl is-active --quite httpd;
then
    echo "Httpd is running 'ps -aux | grep httpd'"
else
    echo "Httpd is not running. 'ps -aux | grep httpd'"
    sudo systemctl start httpd

    if systectl is-active --quite httpd;
    then
        echo "httpd started successfully.. 'ps-aux | grep httpd'"
    else
        echo "failed to start httpd service. 'ps-aux | grep httpd'"
    fi 
fi