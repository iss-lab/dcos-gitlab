#!/bin/bash

[ ! -z ${GITLAB_RB_MUSTACHE_BASE64} ] && \
  rm -f ${MESOS_SANDBOX}/gitlab.rb.mustache && \
  echo "${GITLAB_RB_MUSTACHE_BASE64}" | base64 -d > ${MESOS_SANDBOX}/gitlab.rb.mustache

/mnt/mesos/sandbox/bootstrap -install-certs=false -print-env=false -resolve=false -resolve-hosts='' -self-resolve=false -template=true > /dev/null 2>&1

/assets/wrapper