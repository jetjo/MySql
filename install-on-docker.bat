docker run --network my-net-bridge --name mysql8-master -p 3306:3306 -v C:/Users/m1596/docker/mysql/3306/conf:/etc/mysql/conf.d -v C:/Users/m1596/docker/mysql/3306/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=xxxxxx -d mysql:latest --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
docker exec -it mysql8-master bash
mysql -uroot -p

CREATE USER 'bing'@'%' IDENTIFIED WITH mysql_native_password BY 'xxxxxx';
GRANT ALL PRIVILEGES ON *.* TO 'bing'@'%';
