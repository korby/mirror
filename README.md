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
I want to replicate locally my production projet remotly hosted in /var/www/johnedoe  
On your local server containing same services than remote server and same vhosts root dir (/var/www usually and in examples below), do :
```
mkdir /var/www/johnedoe
vi /var/www/johnedoe/mirror-config.yml
```
In mirror-config.yml now opened, add your remote parameters  
```yaml
mirror:
  # remote access
  ssh: username@remote-host.com
  # remote deploy_path
  path: /var/www/johnedoe/
  # remote config file path from deploy_path
  path_conf: wp-config.php
```
```
cd /var/www/johnedoe
mirror test
mirror getdb
mirror importdb
mirror getfiles
mirror getvhost
```

That's all, you are done !


```

## Install
```
git clone git@github.com:korby/mirror.git
cd mirror
ln -s /usr/bin/mirror `pwd`/mirror.sh
```