##!/bin/sh
#set -e
#
#echo "Deploying application ..."
#
#    cd
#    # Update codebase
#    git fetch origin deploy
#    git reset --hard origin/deploy
#
#    # Install dependencies based on lock file
#    composer install --no-interaction --prefer-dist --optimize-autoloader
#    php artisan config:clear
#    php artisan route:clear
#    php artisan view:clear
#    php artisan migrate
#    php artisan queue:restart
##    php artisan route:cache
#    npm install
#    npm run production
#    # Migrate database
#    #php artisan migrate --force
#
#    # Note: If you're using queue workers, this is the place to restart them.
#    # ...
#    npm install
#    npm run production
#
#echo "Application deployed!"

set e;
echo "Deploying application ..."
cd github-action

    # Update codebase
    git fetch origin deploy
    git reset --hard origin/deploy

    # Install dependencies based on lock file
    composer install --no-interaction --prefer-dist --optimize-autoloader
    php artisan config:clear
    php artisan route:clear
    php artisan view:clear
#    php74 artisan migrate:status -v
#    php74 artisan migrate -v

    php artisan queue:restart
#    php artisan route:cache
    npm install
    npm run production
    # Migrate database
    #php artisan migrate --force


echo "Application deployed!"
