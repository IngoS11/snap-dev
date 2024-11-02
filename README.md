# Visual Studio Code Devcontainer for Snap Development
The repository contains a setup for Visual Studio Code as a devcontainer for the development of custom SnapLogic Snaps
The container is set up to install your local groundplex (jcc). Please follow the setup instructions before you
re-open the environment in a container.

## Installation
The SnapLogic Groundplex files are !!!not!!! part of this repository and need to be copied into the jcc folder before
you can use the environment
- Configure a Snaplex/Groundplex in SnapLogic
- Download the RPM file for the Snaplex/Groundplex and copy it into the jcc folder
- Download the congifuration file and copy it into the jcc folder
- Open Visual Studio Code in the root of the directory
- When asked to re-open the enviornment in a container say yes

these steps will install the jcc and the configuration files inside the container 

## Starting the Snaplex/Groundplex
To start the SnapLex in the container use
```
> cd ~/opt/snaplogic/run/lib
> java -jar jcc.war jcc
```
you should now see your Snaplex/Groundplex in the Management console of SnapLogic.


## Developing Snaps
In oder to develop Snaps please follow the devleoper guide at https://developers.snaplogic.com

## Components Installed
- Maven 3.9
- Java 11
