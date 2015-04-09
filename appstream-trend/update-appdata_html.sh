#!/bin/bash

pushd $(dirname $0)

APPDATA="http://download.opensuse.org/tumbleweed/repo/oss/suse/setup/descr/appdata.html"

curl $APPDATA > appdata.html
git commit appdata.html -m "appdata.html: $1"
git commit data.txt -m "data.txt: $1"