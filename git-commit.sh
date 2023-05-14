#!/bin/bash
# Mac 上可以去掉脚本的第一行标志：「#!/bin/bash」
# 加上这个，颜色码会失效

# 1、cd 到当前目录
currentDir=$(cd "$(dirname "$0")"; pwd)
cd ${currentDir}

# 2、获取当前的分支
currentBranch=$(git symbolic-ref --short HEAD)

# 3、获取提交的信息
echo "\033[32m——-----请输入提交信息(不要输入空格)：🙃——-----\033[0m"
read commitInfo

# 4、提交操作
git add .
git commit -m $commitInfo
echo "\033[32m——-----git 提交完毕🙃—-----\033[0m"

# 5、推送代码
git push -u origin $currentBranch
echo "\033[32m——-----git 推送完毕🙃—-----\033[0m"


sleep 3
exit