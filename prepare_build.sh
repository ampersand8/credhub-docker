#!/bin/sh
# Given repo in credhub project forbids http access
sed -i 's/http\:/https\:/g' credhub/build.gradle
cp truststore_preparation.sh credhub/
cp fetch-version.sh credhub/
cd credhub
./truststore_preparation.sh
./gradlew --no-daemon assemble
