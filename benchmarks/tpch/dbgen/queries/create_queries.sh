#!/bin/bash

echo "Creating individual queries ..."
for i in `seq 1 22`;
do
	if [ $i -ne 18 ]
	then
		../qgen -s $1 $i > test$i.sql
	fi
done

filename=`date "+%s"`
cat test*.sql > workload_$filename.sql

rm test*.sql

