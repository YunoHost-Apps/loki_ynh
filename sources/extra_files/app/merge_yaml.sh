#!/bin/bash

{
	for file in $@
	do
		/usr/bin/python3 -c "import yaml, json; print(json.dumps(yaml.safe_load(open('$file'))))"
	done
} \
	| /usr/bin/jq --slurp 'reduce .[] as $item ({}; . * $item)' \ # Credits: https://stackoverflow.com/a/36218044
	| /usr/bin/python3 -c "import yaml, json; print(yaml.dump(json.load(open('/dev/stdin'))))"
