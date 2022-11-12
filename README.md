
## Laravel Ecosystem

Laravel Ekosistem sudah termasuk : 
- Database MariaDB
- Database MongoDB

Package :
- jenssegers/mongodb
- passport

### Cara Install

Environment termasuk config database :

```
cp .env.example .env
cp .docker/.env.example .docker/.env

```
Build images

```
docker-compose -f .docker/development.yml -f --build

```

Masuk ke dalam container untuk menginstall composer

```
docker ps

```

```
docker exec -it {ID_CONTAINER} bash

```

Setelah masuk


```
composer install

```
