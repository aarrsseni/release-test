NAME=$(basename $(find . -type f -name 'release-test-*.zip'))
echo $NAME
mkdir temp-homebrew
cd temp-homebrew
git clone https://github.com/aarrsseni/homebrew-test-release
cd homebrew-test-release
cd Formula
PREV_NAME=$(grep -o 'file_path=.*$' bq.rb | cut -c11-)
PREV_NAME=${PREV_NAME%?};
echo $PREV_NAME
sed -i '.bak' "s/$PREV_NAME/$NAME/g" bq.rb
git add .
git commit -m "Update formula version"
git push origin master