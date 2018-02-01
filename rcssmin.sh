#!/bin/sh
set -x
HTMLFILE=$(cd ${WORKSPACE}/DEB/html && ls *.html)
for htmlf in ${HTMLFILE}
    do
    python -mrcssmin < ${WORKSPACE}/DEB/html/${htmlf} > ${WORKSPACE}/DEB/source/${htmlf}
    rm ${WORKSPACE}/DEB/html/${htmlf}
done
