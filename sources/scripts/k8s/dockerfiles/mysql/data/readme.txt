# ${APPLICATION_DISK_ROOT}，当前应用数据文件根目录，将以下命令行中替换为实际路径

mkdir -p ${APPLICATION_DISK_ROOT}

tar -zxvf ./mysql-data-standard-initialize-1.0.tar -C ${APPLICATION_DISK_ROOT}

docker run --name mysql-p0-1.0 \
    -p 3306:3306 \
    -v ${APPLICATION_DISK_ROOT}/config/mysqld.cnf:/etc/mysql/mysql.conf.d/mysqld.cnf \
    -v ${APPLICATION_DISK_ROOT}/data/db:/opt/p0/mysql/data/db \
    -v ${APPLICATION_DISK_ROOT}/data/tmp:/opt/p0/mysql/data/tmp \
    -v ${APPLICATION_DISK_ROOT}/logs:/opt/p0/mysql/logs \
    -d --rm mysql:p0-1.0

password:root/#f4^6]e9!go
