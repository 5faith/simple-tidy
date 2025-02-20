-- 创建simple_tidy数据库
CREATE DATABASE IF NOT EXISTS simple_tidy;

-- 创建nacos_config数据库
CREATE DATABASE IF NOT EXISTS nacos_config;

-- 创建tidy用户并授予simple_tidy数据库的所有权限
CREATE USER 'tidy'@'%' IDENTIFIED BY 'tidy@55555';
GRANT ALL PRIVILEGES ON simple_tidy.* TO 'tidy'@'%';

-- 创建nacos用户并授予nacos_config数据库的所有权限
CREATE USER 'nacos'@'%' IDENTIFIED BY 'nacos@55555';
GRANT ALL PRIVILEGES ON nacos_config.* TO 'nacos'@'%';

FLUSH PRIVILEGES;