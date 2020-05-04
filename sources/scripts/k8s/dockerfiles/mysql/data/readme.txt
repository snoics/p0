# ${APPLICATION_DISK_ROOT}，当前应用数据文件根目录，将以下命令行中替换为实际路径

mkdir -p ${APPLICATION_DISK_ROOT}

tar -zxvf ./mysql-data-standard-initialize-1.0.tar -C ${APPLICATION_DISK_ROOT}

docker run --name mysql-standard-1.0 \
    -p 3306:3306 \
    -v ${APPLICATION_DISK_ROOT}/data/mysql/config/mysqld.cnf:/etc/mysql/mysql.conf.d/mysqld.cnf \
    -v ${APPLICATION_DISK_ROOT}/data/mysql/db:/opt/data/mysql/db \
    -v ${APPLICATION_DISK_ROOT}/data/mysql/tmp:/opt/data/mysql/tmp \
    -v ${APPLICATION_DISK_ROOT}/logs/mysql:/opt/logs/mysql \
    -d --rm mysql:standard-1.0

password:root/#f4^6]e9!go
