{
    "package": {
        "name": "distributions",
        "repo": "forge",
        "subject": "ystia",
        "desc": "Ystia Forge distributions",
        "website_url": "https://ystia.github.io/",
        "issue_tracker_url": "https://github.com/ystia/forge/issues",
        "vcs_url": "https://github.com/ystia/forge",
        "github_use_tag_release_notes": false,
        "github_release_notes_file": "CHANGELOG.md",
        "licenses": ["Apache-2.0"],
        "labels": [],
        "public_download_numbers": true,
        "public_stats": false,
        "attributes": []
    },

    "version": {
        "name": "${VERSION_NAME}",
        "desc": "Ystia Forge distributions ${VERSION_NAME}",
        "released": "${RELEASE_DATE}",
        "vcs_tag": "${TAG_NAME}",
        "attributes": [],
        "gpgSign": false
    },

    "files":
        [
        {"includePattern": "build/csars/(.*\\.zip)", "uploadPattern": "$1"}
        ],
    "publish": true
}

