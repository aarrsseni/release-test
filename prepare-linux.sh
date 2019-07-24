#sudo apt-get install ruby ruby-dev rubygems build-essential
#
#sudo apt-get install rpmbuild
#
#gem install --no-ri --no-rdoc fpm
#fpm --version
#
#mvn clean install -P assembly
#FILE_ZIP=$(find . -type f -name 'release-test-*.zip')
#echo ${FILE_ZIP}
#
#fpm -s zip -t rpm -n rpmbuild ${FILE_ZIP}

sudo apt-get install -f ./test_1.0_amd64.deb
dpkg -s test |  grep Status
test