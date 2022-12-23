fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## Android

### android test

```sh
[bundle exec] fastlane android test
```

Runs all the tests

### android beta

```sh
[bundle exec] fastlane android beta
```

Submit a new Beta Build to Crashlytics Beta

### android deploy

```sh
[bundle exec] fastlane android deploy
```

Deploy a new version to the Google Play

### android buildLocal

```sh
[bundle exec] fastlane android buildLocal
```

Build Local for testing

### android buildStaging

```sh
[bundle exec] fastlane android buildStaging
```

Build Staging for testing

### android buildPreprod

```sh
[bundle exec] fastlane android buildPreprod
```

Build Preprod for testing

### android buildProd

```sh
[bundle exec] fastlane android buildProd
```

Build Prod for testing

### android codepush

```sh
[bundle exec] fastlane android codepush
```

====CODE PUSH====

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
