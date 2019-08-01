# test-release

Test release

To release
- mvn release:prepare
- mvn release:perform -Darguments="-Dmaven.deploy.skip=true"



#### Docs to provide yum install

For user
- wget https://bintray.com/aarrsseni/release-rpm/rpm -O bintray-aarrsseni-release-rpm.repo
- mv bintray-aarrsseni-release-rpm.repo /etc/yum.repos.d/


For Dev
- curl -X POST -u aarrsseni:<Bintray-api-key> https://api.bintray.com/calc_metadata/aarrsseni/release-rpm