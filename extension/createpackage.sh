#!/bin/sh

XPI=../docs/amber.xpi

if [ -e $XPI ]; then
    rm -f $XPI
fi

zip -r $XPI \
    content/* \
    install.rdf \
    chrome.manifest
