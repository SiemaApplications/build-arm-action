#!/bin/bash -e

# Each token of the arguments shall be the list of dir/targets to build
# directory and targets must be separated by a ':'
# example of arguments:
# "dir1:target 1 target2" dir2:target dir3:
# When target is not specified, the ':' is still necessary

for a in "$@"; do
    dir=$(echo ${a} | cut -d ':' -f 1)
    target=$(echo ${a} | cut -d ':' -f 2)
    make -C ${dir} ${target}
done

