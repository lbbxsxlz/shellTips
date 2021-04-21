#! /bin/bash

echo "\$*=" $*
echo "\"\$*\"=" "$*"
echo "\$@=" $@
echo "\"\$@\"=" "$@"

echo "print each para from \$*"
for var in $*
do
	echo "$var"
done

echo "print each para from \$@"
for var in $@
do
	echo "$var"
done

echo "print each para from \"\$*\""
for var in "$*"
do
	echo "$var"
done

echo "print each para from \"\$@\""
for var in "$@"
do
	echo "$var"
done
