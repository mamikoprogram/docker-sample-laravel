cd ../
rm -Rf ./learning

composer create-project "laravel/laravel=${LARAVEL_VERSION}" learning
cd ./learning
cp .env.example .env
php artisan key:generate
php artisan storage:link

sed -i -e "s/DB_HOST=127\.0\.0\.1/DB_HOST=db/g" \.env
sed -i -e "s/DB_DATABASE=laravel/DB_DATABASE=$MYSQL_DATABASE/g" .env
sed -i -e "s/DB_USERNAME=root/DB_USERNAME=$MYSQL_USER/g" .env
sed -i -e "s/DB_PASSWORD=$/DB_PASSWORD=$MYSQL_PASSWORD/g" .env
