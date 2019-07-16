#!/bin/bash

set -euxo pipefail

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "${BASEDIR}"

for PYVER in 3.7 ; do
  cd "${BASEDIR}/pip/${PYVER}"
  for reqfile in */requirements.txt ; do
    if [ $(wc -l < "${reqfile}") -gt 0 ] ; then
      "python${PYVER}" -m pip install -r "${reqfile}"
    fi
  done
  # Display installation
  "python${PYVER}" -m pip freeze
done