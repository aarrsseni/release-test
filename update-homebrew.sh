#!/usr/bin/env bash
NAME=$(basename $(find . -type f -name 'release-test-*.zip'))
echo ${NAME}
mkdir temp-homebrew

CHECKSUM=$(echo "$(shasum -a 256 target/${NAME})" | awk '{print $1;}')
echo ${CHECKSUM}

cd temp-homebrew
git clone https://github.com/aarrsseni/homebrew-test-release
cd homebrew-test-release
git remote add origin-deploy https://${GITHUB_TOKEN}@github.com/aarrsseni/homebrew-test-release.git
cd Formula

cat release-test.rb

PREV_NAME=$(grep -o 'file_path=.*$' release-test.rb | cut -c11-)
PREV_NAME=${PREV_NAME%?}

PREV_CHECKSUM_FROM_FILE=$(grep -o 'sha256.*$' release-test.rb | cut -c9-)
PREV_CHECKSUM=${PREV_CHECKSUM_FROM_FILE%?}

echo ${PREV_NAME}
echo ${PREV_CHECKSUM}

sed -i '.bak' "s/$PREV_NAME/$NAME/g" release-test.rb

sed -i '.bak' "s/$PREV_CHECKSUM/$CHECKSUM/g" release-test.rb

cat release-test.rb

git add .
git commit -m "Update formula version"
git push origin-deploy master