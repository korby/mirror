#!/bin/bash
if [ "$(uname)" != "Linux" ]; then rpath=`readlink "$0"`; else rpath=`readlink -f "$0"`; fi;
abs_path=$(dirname "$rpath")

function help {
	echo "usage:"
	acts=`ls $abs_path/lib/action/`
	for act in ${acts[@]}
	do
		echo "./mirror "$act
	done 


}

if [ $# -eq 0 ]; then
    help
    exit 1
fi


. $abs_path/lib/yaml_parse
. $abs_path/lib/colors
. $abs_path/lib/track

action=$1

#parse_yaml mirror-config.yml
eval $(parse_yaml mirror-config.yml)

. $abs_path/lib/action/$action


