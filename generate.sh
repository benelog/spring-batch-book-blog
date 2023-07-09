#!/bin/bash
sed s/\$GITHUB_TOKEN/$GITHUB_TOKEN/ antora-playbook.yml > build.yml
npx antora --fetch --stacktrace build.yml
