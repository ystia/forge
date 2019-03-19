# Contributing to the Ystia Orchestrator plugin for Alien4Cloud project

**First off**, thanks for taking time to contribute!

The following is a set of guidelines for contributing to the Ystia Forge.
Feel free to provide feedback about it in an issue or pull request.

Don't be afraid to contribute, if something is unclear then just ask or submit the issue or pull request
anyways. The worst that can happen is that you'll be politely asked to change something.

## How to build Ystia Forge from source

Ystia Forge is a set of TOSCA components that are basically just plain old YAML files.
They do not require any specific build tool, they just need to be zipped to be imported into Alien4Cloud.
To ease zipping of all components properly we provide a script.

    ./build/zip_csar.sh
    # CSARs are generated into ./build/csars/ directory

## How to contribute

You can contribute to the Yorc project in several ways. All of them are welcome.

* Report a documentation issue
* Report a bug
* Report an improvement request
* Propose a PR that fixes one of the above, we will try to tag `good_first_pr` issues that are a good starting point for contributing

### Report an issue

Use [Github issues](https://github.com/ystia/forge/issues) to report issues.
Please try to answer most of the questions asked in the issue template.

### Propose a Pull Request

**Working on your first Pull Request?** You can learn how from this *free* series [How to Contribute to an Open Source Project on GitHub](https://egghead.io/series/how-to-contribute-to-an-open-source-project-on-github)

Use [Github pull requests](https://github.com/ystia/forge/pulls) to propose a PR.
Please try to answer most of the questions asked in the pull request template.

### License headers

You should apply the license header to the source files.
