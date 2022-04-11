#!/bin/sh

export CRYSTAL_PATH=`crystal env CRYSTAL_PATH`:/codes/lib/crystal
export PYTHONUNBUFFERED=1
python judge.py
