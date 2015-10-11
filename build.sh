#!/bin/bash

set -e

TEMPDIR=$(mktemp -d /tmp/temp.XXXX)

virtualenv $TEMPDIR
$TEMPDIR/bin/pip install -r requirements.txt

function buildzip() {
	name=$1
	virtualenv=$2
	orig=$(pwd)
	zip -r9 $name.zip $name.py
	cd $virtualenv/lib/python2.7/site-packages && zip -r9 $orig/$name.zip *
}

buildzip write_checkin_to_dynamo $TEMPDIR
