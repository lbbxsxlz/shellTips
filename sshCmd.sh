#! /bin/sh

# ssh端口映射
# 说明：
#ssh -C -f -N -g -L "local port":"dst host":"dst port" "user"@"dst host"

# telnet 23端口映射
ssh -C -f -N -g -L 8023:192.168.254.201:23 admin@192.168.254.201

# ssh 22端口映射
ssh -C -f -N -g -L 8022:192.168.254.201:22 admin@192.168.254.201

# 80端口映射
ssh -C -f -N -g -L 8080:172.31.18.104:80 admin@172.31.18.104

# 4321 端口映射
ssh -C -f -N -g -L 8321:192.168.254.201:4321 admin@192.168.254.201

# 动态端口转发
ssh -f -N -D  localhost:9966 admin@172.31.3.129

# fix error "WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!"
# 140.82.121.4 是报错的IP
ssh-keygen -R 140.82.121.4

# 生成rsa密钥
ssh-keygen -t rsa

