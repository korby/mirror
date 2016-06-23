# MIRROR
Bash tool to automate mirroring website for testing locally. On each side (remote server/local server) it's based on :
- capistrano directories tree
- php 
- apache
- mysql

## Features
Automatically export and get db
Automatically create, import db and tunes access (ip or domain mapping, user rights)
Automatically get files (current and shared) preserving symlinks
Automatically get and activate apache vhost

## Usage
That command shows you usage
```
./mirror
```

## Usage
git clone git@github.com:korby/deployer.git
cd mirror
ln -s /usr/bin/deployer `pwd`/deployer.sh