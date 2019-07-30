#!/usr/bin/env bash

#choco install graalvm

# TODO: can this be done by chocolatey? or something else more robust?
#export JAVA_HOME="/c/Program Files/GraalVM/graalvm-ce-19.1.0"

# check
#"${JAVA_HOME}/bin/java" -version
#./mvnw -v
#./mvnw clean install

#NAME=$(find . -type f -name 'release-test-*.jar')
#echo ${NAME}

#WORK_DIR=$(pwd)
#echo ${WORK_DIR}

choco uninstall KB2919355 --force-dependencies
choco uninstall KB2919442 --force-dependencies
choco uninstall KB2999226 --force-dependencies
choco uninstall KB3033929 --force-dependencies
choco uninstall KB3035131 --force-dependencies
choco uninstall microsoft-build-tools --force-dependencies
choco uninstall vcredist140 --force-dependencies
choco uninstall vcredist2017 --force-dependencies
choco uninstall visualstudio2017buildtools --force-dependencies
choco uninstall visualstudio2017-installer --force-dependencies
choco uninstall visualstudio2017-workload-netcorebuildtools --force-dependencies
choco uninstall visualstudio2017-workload-vctools --force-dependencies
choco uninstall visualstudio2017-workload-webbuildtools --force-dependencies

choco install windows-sdk-7.1


#cd "/c/Program Files (x86)/Microsoft Visual Studio 14.0/VC/bin"
#ls

#./make-shell.exe ${JAVA_HOME}/bin/native-image.cmd -jar "${WORK_DIR}/target/release-test-1.22-SNAPSHOT.jar"

#cd ${WORK_DIR}

./setenv.cmd

#ls

cd "${JAVA_HOME}/bin"

./native-image.cmd -jar "${WORK_DIR}/target/release-test-1.22-SNAPSHOT.jar"
