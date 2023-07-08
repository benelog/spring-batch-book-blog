#!/bin/bash
node -e "fs.writeFileSync('package.json', '{}')"
npm i -D -E @antora/cli@3.1 @antora/site-generator@3.1
sed -i s/\$GITHUB_TOKEN/$GITHUB_TOKEN/ antora-playbook.yml
npx antora antora-playbook.yml --stacktrace
