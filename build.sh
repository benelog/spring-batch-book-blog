#!/bin/bash
node -e "fs.writeFileSync('package.json', '{}')"
npm i -D -E @antora/cli@3.1 @antora/site-generator@3.1
sed s/\$GITHUB_TOKEN/$GITHUB_TOKEN/ antora-playbook.yml > build.yml
npx antora build.yml --stacktrace
