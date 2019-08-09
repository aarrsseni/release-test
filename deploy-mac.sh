
cd target

curl -X PUT -u aarrsseni:${BINTRAY_API_KEY} https://api.bintray.com/content/aarrsseni/release-test/release-test/1.58/release-test-1.58-SNAPSHOT.zip?publish=1
