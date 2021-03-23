#!/bin/bash -e
# Environement variables defines the directory target and options passed to make
# INPUT_DIR: directory to run make from
# INPUT_TARGET: makefile target
# INPUT_MAKE_OPTS: makefile options
echo "dir: ${INPUT_DIR}"
echo "target: ${INPUT_TARGET}"
echo "make opts: ${INPUT_MAKE_OPTS}"

make -C ${INPUT_DIR} ${INPUT_MAKE_OPTS} ${INPUT_TARGET}
