# Release process

- create branch with name `release/v{major}.{minor}` e.g. `release/v4.13` for hotfix this branch should already exist
- update CHANGELOG.md
- push new tag `v{major}.{minor}.{hotfix}` e.g. `v4.13.0` to trigger publish pipeline
- merge release branch to release branches with higher version and master
- publish release to make it public