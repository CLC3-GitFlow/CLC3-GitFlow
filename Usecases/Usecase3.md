# Usecase 3

## Details

Hotfix is detected and subsequently update with versions on all specified apps are released in corresponding version (major minor patch).

## Sequencediagram
Tool: [sequencediagram](https://sequencediagram.org/)

![Usecase3](Images/Usecase-3.png)

## Tutorial (step-by-step instructions & reproducibility)
### step-by-step instructions
To apply a hotfix, we are using [GitHub Tag Action](https://github.com/mathieudutour/github-tag-action#github-tag-action). This is used to automatically bump and tag master, on merge with the latest SemVer formatted version.  
1. Write a commit in the commit message of the hotfix commit: ```fix(YourCommitMessage): CommitSubject```
2. Make Pull Request to this commit to apply the hotfix 

The hotfix will be automatically merge to develop and master and the patch release will be increased by one.

### reproducibility

