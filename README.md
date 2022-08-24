# Bitrise-iOS-Sample

Simple iOS Project  with working bitrise.yml included in the root of the project that builds iOS .ipa and runs tests.

## Bitrise Setup

Create a new project in Bitrise using this repo as you normally would. Use the `bitrise.yml` from the repo to define your workflows.

In order to sign the app during the `deploy` workflow archive step, you must set a valid provisioning profile and signing certificate in the `bitrise.yml` (`BITRISE_PROFILE_ID` and `BITRISE_CODE_SIGNING_IDENTITY` env vars) and upload those to your account. More details can be found in the [internal wiki](https://bitrise.atlassian.net/wiki/spaces/~833061986/pages/1554875463/Demo+App-Bitrise+Deploy+Workflow).
