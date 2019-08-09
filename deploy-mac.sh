
cd target

curl -X PUT -u aarrsseni:${BINTRAY_API_KEY} https://api.bintray.com/content/aarrsseni/release-test/release-test/1.58/release-test-1.58-SNAPSHOT.zip?publish=1


curl POST -H "Content-Type: application/json" --basic -u aarrsseni:$BINTRAY_API_KEY https://api.bintray.com/packages/aarrsseni/release-test-deb --data '{
    "name": "release-test-deb",
    "repo": "release-test-deb",
    "subject": "aarrsseni",
    "desc": "I was pushed completely automatically",
    "website_url": "www.jfrog.com",
    "issue_tracker_url": "https://github.com/aarrsseni/release-test/issues",
    "vcs_url": "https://github.com/aarrsseni/release-test",
    "github_use_tag_release_notes": true,
    "github_release_notes_file": "RELEASE.txt",
    "licenses": ["Apache-2.0"],
    "labels": ["cool", "awesome"],
    "public_download_numbers": false,
    "public_stats": false
}'
