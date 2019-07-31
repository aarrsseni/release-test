#!/usr/bin/env bash

choco install graalvm

# TODO: can this be done by chocolatey? or something else more robust?
#export JAVA_HOME="/c/Program Files/GraalVM/graalvm-ce-19.1.0"

# check
#"${JAVA_HOME}/bin/java" -version
#./mvnw -v
#./mvnw clean install

#NAME=$(find . -type f -name 'release-test-*.jar')
#echo ${NAME}

WORK_DIR=$(pwd)
#echo ${WORK_DIR}

#cuninst dotnet4.6.2 -y --skipautouninstaller
#cuninst microsoft-build-tools -y --skipautouninstaller
#cuninst visualstudio2017-workload-vctools -y --skipautouninstaller
#cuninst vcredist2017 -y --skipautouninstaller
#cuninst vcredist140 -y --skipautouninstaller
#cuninst visualstudio2017-workload-webbuildtools -y --skipautouninstaller
#cuninst visualstudio2017-workload-netcorebuildtools -y --skipautouninstaller
#cuninst visualstudio2017buildtools -y --skipautouninstaller

choco install windows-sdk-7.1 -y --force --force-dependencies

#cd "/c/Program Files (x86)/Microsoft Visual Studio 14.0/VC/bin"
#ls

#./make-shell.exe ${JAVA_HOME}/bin/native-image.cmd -jar "${WORK_DIR}/target/release-test-1.22-SNAPSHOT.jar"

#cd ${WORK_DIR}

./setenv.cmd

#ls

#cd "${JAVA_HOME}/bin"

#./native-image.cmd -jar "${WORK_DIR}/target/release-test-1.22-SNAPSHOT.jar"
