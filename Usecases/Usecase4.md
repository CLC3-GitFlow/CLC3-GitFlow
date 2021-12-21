# Usecase 4

## Details

After a change on major and minor level the changelog / readme file should be updated with additional information about it.

## Sequencediagram
Tool: [sequencediagram](https://sequencediagram.org/)

![Usecase4](Images/Usecase-4.png)

## Tutorial (step-by-step instructions & reproducibility)

### Create Workflow file
Create '/.github/workflows/changelog.yml' with:

```
name: Create Changelog

on:
  push:
    branches: [ master ]
    paths-ignore:
      - '**/CHANGELOG.md'

jobs:
  generate_changelog:
    runs-on: ubuntu-latest
    name: Generate changelog for master branch
    steps:
      - uses: actions/checkout@v1

      - name: Generate changelog
        uses: charmixer/auto-changelog-action@v1
        with:
          issue_line_labels: "ALL"
          token: ${{ secrets.OUR_GITHUB_TOKEN }}

      - name: Commit files
        env:
          CI_USER: CLC3-Gitflow
          CI_EMAIL: CLC3-GitFlow
        run: |
          git config --local user.email "$CI_EMAIL"
          git config --local user.name "$CI_USER"
          git add CHANGELOG.md
          git commit -m 'Updated CHANGELOG.md'
          echo "push=true" >> $GITHUB_ENV || echo "No changes to CHANGELOG.md"
      - name: Push changes
        if: env.push == 'true'
        env:
          CI_USER: CLC3-Gitflow
          CI_TOKEN: ${{ secrets.OUR_GITHUB_TOKEN }}
        run: |
          git push "https://$CI_USER:$CI_TOKEN@github.com/$GITHUB_REPOSITORY.git" HEAD:master
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

## How to start a workflow
Create a Pull-Request with changes to merge into the master branch. After merging the Pull-Request the workflow will start automatically and you can see the result in the CHANGELOG.md file.
