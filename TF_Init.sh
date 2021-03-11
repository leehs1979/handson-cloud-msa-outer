#!/bin/bash

for dir in environments/*/
do 
  cd ${dir}
  env=${dir%*/}
  env=${env#*/}
  echo ""
  echo "*************** TERRAFOM INIT and VALIDATE ******************"
  echo "******* At environment: ${env} ********"
  echo "*************************************************"
  terraform init || exit 1
  terraform validate || exit 1
  cd ../../../
done
