#!/bin/sh

export CRYSTAL_PATH=`crystal env CRYSTAL_PATH`:/codes/lib/crystal
crystal spec $@
