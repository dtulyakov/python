#!/bin/sh
set -x
HTMLFILE=$(cd ${WORKSPACE} && ls *.html)
for htmlf in ${HTMLFILE}
    do
    python -mrcssmin -p < ${WORKSPACE}/${htmlf} > ${WORKSPACE}/../../${htmlf}
done
