#!/bin/sh
set -x
HTMLFILE=$(cd ${WORKSPACE} && ls *.html)
for htmlf in ${HTMLFILE}
    do
    python -mrcssmin -p < ${WORKSPACE}/${htmlf} > ${WORKSPACE}/../../${htmlf}
    rm ${WORKSPACE}/${htmlf}
    mv ${WORKSPACE}/../../${htmlf} ${WORKSPACE}/${htmlf}
done
