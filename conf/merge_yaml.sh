#!/bin/bash

shopt -s nullglob

file_list=($@)

{
	for file in "${file_list[@]}"
	do
		/usr/bin/python3 -c "import yaml, json; print(json.dumps(yaml.safe_load(open('$file')), default=str))"
	done
} \
	| /usr/bin/jq --slurp 'reduce .[] as $item ({}; . * $item)' \
	| /usr/bin/python3 -c "import yaml, json; print(yaml.dump(json.load(open('/dev/stdin'))))"
