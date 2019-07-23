sudo apt-get install ruby ruby-dev rubygems build-essential

sudo apt-get install rpmbuild

gem install --no-ri --no-rdoc fpm
fpm --version

mvn clean install -P assembly
FILE_ZIP=$(find . -type f -name 'release-test-*.zip')
echo ${FILE_ZIP}

fpm -s zip -t rpm ${FILE_ZIP}
