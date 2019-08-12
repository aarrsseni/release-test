#!/usr/bin/env bash

cd target

NAME=$(basename $(find . -type f -name 'release-test-*.jar'))
VERSION=$(echo "${NAME%.*}" | cut -d'-' -f 3)

cd ..

sed -i '.bak' "s/template_version/$VERSION/g" deploy-deb.json
sed -i '.bak' "s/template_tag/$VERSION/g" deploy-deb.json

sed -i '.bak' "s/template_version/$VERSION/g" deploy-rpm.json
sed -i '.bak' "s/template_tag/$VERSION/g" deploy-rpm.json