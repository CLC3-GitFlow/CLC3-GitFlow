# CLC3-GitFlow

## Info

[WHAT ARE WE EVEN DOING?](https://docs.google.com/spreadsheets/d/1TND9vrQhHt1GK2RZ2cM7CNtNGox4a7Rkn2qamFMTSvg/edit#gid=0)

[GITHUB ACTIONS WHAAAT?](https://docs.github.com/en/actions/learn-github-actions)

[Possible solution for readme update](https://github.community/t/possible-to-commit-files-after-workflow-runs/17824)


## How did we do what?

### Usecase 1
[Stop merge if check not okay](https://stackoverflow.com/questions/58654530/how-to-auto-reject-a-pull-request-if-tests-are-failing-github-actions)
Successfull only means, that the check was completed, not that the check was successfull. Confusing, I know.

### Usecase 4
For the hotfix we have to explicitly write certain keywords in the commit messages. Those influence the major, minor, patch number. [Doku](https://github.com/mathieudutour/github-tag-action)
