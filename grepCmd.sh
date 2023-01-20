#! /bin/sh

grep "root" /etc/passwd
grep -n "root" /etc/passwd

# 匹配root的次数
grep -c "root" /etc/passwd

grep -A2 "^root" /etc/passwd

grep -B1 "^bin" /etc/passwd

grep -C2 "^proxy" /etc/passwd

grep -i "proxy" /etc/passwd

# 匹配出 /etc/passwd 文件中字符串长度最少 10 位的字符
grep -o "[[:alnum:]]\{10,\}" /etc/passwd

# 匹配出 /etc/passwd 中不包含nologin的行
grep -v "nologin" /etc/passwd

# 匹配3位数字的行
grep -E "[[:digit:]]{3}" /etc/passwd
