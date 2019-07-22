# test-release

Test release

To release
- mvn release:prepare
- mvn release:perform -Darguments="-Dmaven.deploy.skip=true"