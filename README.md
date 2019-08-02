# test-release

Test release

To release
- mvn release:prepare
- mvn release:perform -Darguments="-Dmaven.deploy.skip=true"



#### Docs to provide yum install

For user
- wget https://bintray.com/<org-name>/<repo-name>/rpm -O bintray-<org-name>-<repo-name>.repo
- mv bintray-<org-name>-<repo-name>.repo /etc/yum.repos.d/

Example 

- wget https://bintray.com/aarrsseni/release-rpm/rpm -O bintray-aarrsseni-release-rpm.repo
- sudo mv bintray-aarrsseni-release-rpm.repo /etc/yum.repos.d/


For Dev
- curl -X POST -u <org-name>:<Bintray-api-key> https://api.bintray.com/calc_metadata/<org-name>/<repo-name>


#### Docs to provide apt-get install

For user

- echo "deb [trusted=yes] http://dl.bintray.com/<org-name>/<repo-name> <dist> <component>" | tee -a /etc/apt/sources.list.d/<org-name>.list

Example 

- echo "deb [trusted=yes] http://dl.bintray.com/aarrsseni/release-test-deb vivid main" | tee -a /etc/apt/sources.list.d/aarrsseni.list