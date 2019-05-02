#!/bin/bash


curl -s  mpiconsul:8500/v1/kv/mpidolls?recurse=1 | jq -r '.[] | [.Key, .Value] | join (":")' | sed 's/.*\///' | while IFS=: read hostname cpucount; do cpucount=$(printf '%s\n' "$cpucount" | base64 -d);printf '%s:%s\n' "$hostname" "$cpucount";done >> machinefile
