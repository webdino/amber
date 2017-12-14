#!/bin/sh

if [ -e amber.xpi ]; then
    rm -f amber.xpi
fi

zip -r amber.xpi \
    content/* \
    install.rdf \
    chrome.manifest
