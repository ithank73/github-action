set e;
echo "Deploying application ..."

    cd ../../
    # Install dependencies based on lock file
    composer install --no-interaction --prefer-dist --optimize-autoloader
    php artisan config:clear
    php artisan route:clear
    php artisan view:clear
#    ./auto-version-up.sh
#    php artisan migrate:status -v
#    php artisan migrate -v
#
#    php artisan route:cache
#    php artisan queue:restart
#
#    npm install
#    npm run production


echo "Application deployed!"
