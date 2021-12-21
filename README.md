# CLC3-GitFlow 

![image](/.github/Gitflow.png)
[Imagelink](https://dev.to/hvdb/build-versioning-made-easy-on-azure-devops-1e33)

## Status
[![License](https://img.shields.io/github/license/CLC3-GitFlow/CLC3-GitFlow.svg?style=flat-square)](LICENSE)
[![Last commit](https://img.shields.io/github/last-commit/CLC3-GitFlow/CLC3-GitFlow.svg?style=flat-square)](https://github.com/CLC3-GitFlow/CLC3-GitFlow/commits)
[![Latest tag](https://img.shields.io/github/tag/CLC3-GitFlow/CLC3-GitFlow.svg?style=flat-square)](https://github.com/CLC3-GitFlow/CLC3-GitFlow/releases)
[![Issues](https://img.shields.io/github/issues/CLC3-GitFlow/CLC3-GitFlow.svg?style=flat-square)](https://github.com/CLC3-GitFlow/CLC3-GitFlow/issues)
[![Pull requests](https://img.shields.io/github/issues-pr/CLC3-GitFlow/CLC3-GitFlow.svg?style=flat-square)](https://github.com/CLC3-GitFlow/CLC3-GitFlow/pulls)
[![GitHub Super-Linter](https://github.com/CLC3-GitFlow/CLC3-GitFlow/workflows/Lint%20Code%20Base/badge.svg)](https://github.com/marketplace/actions/super-linter)

[Projectlist](https://docs.google.com/spreadsheets/d/1TND9vrQhHt1GK2RZ2cM7CNtNGox4a7Rkn2qamFMTSvg/edit#gid=0)

## Project Type
Type A

## Project Description
Use GitHub and GitHub Actions/Workflow, same as in the lecture and many more. We use Sonarqube to check if there are problems with bugs and vulnerabilities in our code. We also create an automatic release in Github.

Read world examples / usecases:
- [x] (1) A developer wants to merge a feature branch into the master branch. Sonarqube is used to check the code quality and block the merge if this pipeline fails. Notification is generated and will be send to the user.
- [x] (2) There is a new version on the release branch. Versioning in Github with tags and also artifacts (image) is rolled out on Docker automatically.
- [x] (3) Hotfix is detected and subsequently update with versions on all specified apps are released in corresponding version (major minor patch).
- [x] (4) After a change on major and minor level the changelog / readme file should be updated with additional information about it. 
- [x] (5) Automatically download data source(s), preprocess and clean them and store them in the repo (incl. versioning) => Data sets in our repositories should be downloaded automatically (e.g. from a url) and versioned as well. The data can be updated e.g. automatically every six months. The data should then be cleansed with R in order to be able to work with it immediately / easily.
- [x] (6) A developer wants to merge a update into master branch. A code linter should automatically start after creating pull request und start to lint the code. Information about linter status should be visual in the Readme file.

Images in the form of sequence diagrams (as they were also presented in the exercise in the chapter GitFlow) should be created to visualize the usecases in detail.

## Relation to Course
* Github / Gitlab
* CI
* Automatisation
* Sonarqube
* Docker

## Used Technologies
* Github / Gitlab
* CI
* Sonarqube
* Python
* Docker
* Scrum
* R

## Details and Usecases

Details: see [Project Description](#Project-Description)

Usecases:
* [Usecase1](Usecases/Usecase1.md)
* [Usecase2](Usecases/Usecase2.md)
* [Usecase3](Usecases/Usecase3.md)
* [Usecase4](Usecases/Usecase4.md)
* [Usecase5](Usecases/Usecase5.md)

## Team
:beer: Benjamin U. Pils, BSc. <s2010595016@fhooe.at>

:deer: Tobias Rehberger, BSc. <s2010595021@fhooe.at>

:de: Michael Ulbig, BSc. <s2010595023@fhooe.at>


## Documentation


### Structure, Language & Illustrations

![image](https://user-images.githubusercontent.com/68330032/145993696-b4797f1a-3d4f-470d-afe6-9f5fecbfe24c.png)
[Imagelink](https://nvie.com/posts/a-successful-git-branching-model/)


### Summary of research


### Tutorial (step-by-step instructions & reproducibility)
Please have a look at each Usecase: [Usecase1](Usecases/Usecase1.md) | [Usecase2](Usecases/Usecase2.md) | [Usecase3](Usecases/Usecase3.md) | [Usecase4](Usecases/Usecase4.md) | [Usecase5](Usecases/Usecase5.md)


### Summary of lessons-learned

:tada:

:gift:

:mortar_board:

:bulb:

:information_source:

:white_check_mark:

:x: 	

:heavy_exclamation_mark: 

:bangbang:


### Summary of project (research, tooling, etc.)


### Demonstrate advantages gained by Cloud Computing


## Last information


