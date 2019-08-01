#!/usr/bin/env bash
curl -OL https://github.com/oracle/graal/releases/download/vm-19.1.1/graalvm-ce-darwin-amd64-19.1.1.tar.gz
tar zxf graalvm-ce-darwin-amd64-19.1.1.tar.gz
sudo mv graalvm-ce-19.1.1 /Library/Java/JavaVirtualMachines
/usr/libexec/java_home -v 1.8
export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-19.1.1/Contents/Home/bin:$PATH
/Library/Java/JavaVirtualMachines/graalvm-ce-19.1.1/Contents/Home/bin/gu install native-image
mvn clean package
NAME=$(basename $(find . -type f -name 'release-test-*.jar'))
native-image -H:Name=release-test -jar target/${NAME} -H:Name=release-test
mvn package -P assembly