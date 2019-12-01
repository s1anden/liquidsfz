#!/bin/bash
set -e
cd ..
docker build -t liquidsfz -f static/Dockerfile .
docker run -v $PWD/static:/data -t liquidsfz tar Cczfv /usr/local/liquidsfz/lib/lv2 /data/liquidsfz-static.tar.gz liquidsfz.lv2
