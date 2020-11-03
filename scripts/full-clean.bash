#!/bin/bash
for file in `find ../ -name "clean.bash"`; do
	cd `dirname $file`
	./clean.bash
	cd -
done

rm -rf ../tp-filtre-2a-sicom

