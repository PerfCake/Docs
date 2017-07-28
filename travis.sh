#!/bin/bash
# Abort on Error
set -e

export PING_SLEEP=30s

# Set up a repeating loop to send some output to Travis.
bash -c "while true; do echo \$(date) - building ...; sleep $PING_SLEEP; done" &
export PING_LOOP_PID=$!

# My build is using maven, but you could build anything with this, E.g.
mvn install -Ppdf
mvn install -Pug-html
mvn install -Pdev-html
cd target/docbkx
zip -9r perfcake-docs-html.zip css *-guide

# nicely terminate the ping output loop
kill $PING_LOOP_PID