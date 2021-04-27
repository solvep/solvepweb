#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

pwd

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

sudo git init
git add -A
git commit -m 'deploy'
# git remote add origin git@github.com:solvep/solvep.github.io.git

# git checkout -b 'solvep'
# git checkout 'solvep'
# git push --set-upstream origin solvep

# git push
# git remote -v
# 如果发布到 https://<USERNAME>.github.io
git push -f git@github.com:solvep/solvep.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -