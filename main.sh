#!/bin/bash

backupFolder=$1
outputArchive=$2

mkdir $backupFolder &> /dev/null

for fileExtension in "$@"
do
	find ~ -name *.$fileExtension -exec cp -prv '{}' $backupFolder/ ';' &> /dev/null
done
tar -zcf $outputArchive.tar.gz $backupFolder &> /dev/null

echo "done"