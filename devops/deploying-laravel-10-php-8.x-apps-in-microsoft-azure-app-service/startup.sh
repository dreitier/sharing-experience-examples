#!/bin/bash
# From "Deploying PHP 8.2 and Laravel 10.x applications on Azure App Service": https://sharing-experience.com/en/knowledge-base/devops/platforms/microsoft-azure/deploying-laravel-10-php-8.x-apps-in-microsoft-azure-app-service

cp /home/site/nginx.conf /etc/nginx/sites-available/default
# or, if you are storing the nginx.conf in your Git repository:
# cp /home/site/repository/azure-app-service/nginx.conf /etc/nginx/sites-available/default

service nginx reload
