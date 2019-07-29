#!/usr/bin/env bash

choco install graalvm

# TODO: can this be done by chocolatey? or something else more robust?
export JAVA_HOME="/c/Program Files/GraalVM/graalvm-ce-19.1.0"

# check
"${JAVA_HOME}/bin/java" -version
#./mvnw -v
#./mvnw clean install

#NAME=$(basename $(find . -type f -name 'release-test-*.jar'))

#WORK_DIR=$(pwd)
#echo ${PWD}


#choco uninstall vcredist140 --force --forcedependencies

choco install windows-sdk-7.1

cd "/c/Program Files/Microsoft SDKs/Windows/v7.1/Bin"

ls

./SetEnv
