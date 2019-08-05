# test-release

Test release


### First step

- Create two github repos(Main repo and repo for brew)
- Create three bintray repos (Generic for mac, rpm and debian)

### Gpg signing

- Add public and private keys to your bintray repo
- Add encrypted passphrase to travis.yml to deploy stage

### Release
- mvn release:prepare 
- mvn release:perform -Darguments="-Dmaven.deploy.skip=true" (To finish release and cleanup)


#### Docs to provide yum install

For user
- wget https://bintray.com/[org-name]/[repo-name]/rpm -O bintray-[org-name]-[repo-name].repo
- mv bintray-[org-name]-[repo-name].repo /etc/yum.repos.d/

Example 

- wget https://bintray.com/aarrsseni/release-rpm/rpm -O bintray-aarrsseni-release-rpm.repo
- sudo mv bintray-aarrsseni-release-rpm.repo /etc/yum.repos.d/


For Dev
- curl -X POST -u [org-name]:[Bintray-api-key] https://api.bintray.com/calc_metadata/[org-name]/[repo-name]


#### Docs to provide apt-get install

For user

- echo "deb [trusted=yes] http://dl.bintray.com/[org-name]/[repo-name] [dist] [component]" | tee -a /etc/apt/sources.list.d/[org-name].list

Example 

- echo "deb [trusted=yes] http://dl.bintray.com/aarrsseni/release-test-deb vivid main" | tee -a /etc/apt/sources.list.d/aarrsseni.list

#### Docs to provide brew install

For user 

- brew install <USER_NAME>/<HOMEBREW_REPO_NAME>/<TOOL_NAME>

Example

- brew install aarrsseni/homebrew-test-release/release-test