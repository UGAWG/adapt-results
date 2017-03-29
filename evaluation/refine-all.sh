#! /usr/bin/env bash

set -x # echo commands
set -e # exit on first error
set -u # Treat unset variables as error

meshb_full_paths=`find . -name \*.meshb`

echo ${meshb_full_paths}

for full_path_meshb in ${meshb_full_paths}; do
    case_path=`dirname "${full_path_meshb}"`
    meshb=`basename "${full_path_meshb}"`
    ( cd ${case_path} && ../../../evaluation/refine-stats.sh ${meshb} )
done

