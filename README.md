# Bash-System-Management-Scripts
📚This repository contains several bash scripts for system management.

## bfits.sh

### Description

This script empties a file and logs the action in the syslog.

### Usage

`bfits.sh [-h] <file>` 

### Options

`-h         Help` 

### Parameters

`<file>     The file to be emptied` 

### Conditions

`User: NONE` 

## paquets.sh

### Description

This script shows the version of the installed packages.

### Usage

`paquets.sh [-h]` 

### Options

`-h         Help` 

### Parameters

`NONE` 

### Conditions

`User: NONE` 

## quan.sh

### Description

This script receives a list of packages and shows when they were installed or if they are not installed.

### Usage

`quan.sh [-h] <package> <package>...` 

### Options

`-h         Help` 

### Parameters

`<package>  One or more packages to be checked` 

### Conditions

`User: NONE` 

## quins.sh

### Description

This script shows the packages installed on a specific date.

### Usage

`quins.sh [-h] <date>` 

### Options

`-h         Help` 

### Parameters

`<date>     The date in the format 'yyyy-mm-dd hh:mm:ss'` 

### Conditions

`User: NONE` 

