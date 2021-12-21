# Usecase 6

## Details

A developer wants to merge a update into master branch. A code linter should automatically start after creating pull request und start to lint the code. Information about linter status should be visual in the Readme file.

## Sequencediagram
Tool: [sequencediagram](https://sequencediagram.org/)

![Usecase6](Images/Usecase-6.png)

## Tutorial (step-by-step instructions & reproducibility)

### Create Workflow file
Create '/.github/workflows/linter.yml' with:

```
name: Lint Code Base

on:
  push:
    branches-ignore: [master]
    
  pull_request:
    branches: [master]

jobs:
  build:
    name: Lint Code Base
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Code
        uses: actions/checkout@v2
        with:
          fetch-depth: 0

      - name: Lint Code Base
        uses: github/super-linter@v4
        env:
          VALIDATE_ALL_CODEBASE: false
          DEFAULT_BRANCH: master
          GITHUB_TOKEN: ${{ secrets.OUR_GITHUB_TOKEN }}
```

### Update README.md file
Update 'README.md' with:
```
[![GitHub Super-Linter](https://github.com/<USER>/<REPO>/workflows/Lint%20Code%20Base/badge.svg)](https://github.com/marketplace/actions/super-linter)
```

### Create personal github token for workflow
You should create a personal access token to use in place of a password with the command line or with the API.
1. Verify your email address, if it hasn't been verified yet.
2. In the upper-right corner of any page, click your profile photo, then click Settings. 
3. In the left sidebar, click Developer settings. 
4. In the left sidebar, click Personal access tokens. 
5. Click Generate new token. 
6. Give your token a descriptive name. 
7. To give your token an expiration, select the Expiration drop-down menu, then click a default or use the calendar picker. 
8. Select the scopes, or permissions, you'd like to grant this token. To use your token to access repositories from the command line, select repo.
9. Click Generate token. 

### Create secret for workflow
Go to **Settings** --> **Secrets** --> **New repository secret**

Add Name: **"OUR_GITHUB_TOKEN"** 

.. and **YOUR GITHUB TOKEN** in the Value field

## How to start the workflow
Create a Pull-Request with changes to merge into the master branch. After creating the Pull-Request the workflow will start automatically.
