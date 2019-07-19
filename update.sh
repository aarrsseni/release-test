NAME=$(basename $(find . -type f -name 'release-test-*.zip'))
echo $NAME
mkdir temp-homebrew
cd temp-homebrew
git clone https://github.com/aarrsseni/homebrew-test-release
cd homebrew-test-release
cd Formula
sed -i '.bak' "s/release-test-1.1-osx.zip/test/g" bq.rb
git add .
git commit -m "Update formula version"
git push origin master