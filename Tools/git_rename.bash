#! /bin/bash

TARGET_PATH=$1
MV="git mv"

for SRC in `find ${TARGET_PATH} -depth -type f`
do
	DST=`dirname "${SRC}"`/`basename "${SRC}" | tr '[A-Z]' '[a-z]'`
	if [ "${SRC}" != "${DST}" ]
	then
		[ ! -e "${DST}" ] && ${MV} "${SRC}" "${DST}" || echo "${SRC} was not renamed"
	fi
done
