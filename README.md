
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
docker-compose -f .docker/development.yml up --build

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

### Cara Pakai

masuk ke localhost kalian.

