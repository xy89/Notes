#安装
apt-get install git

# 快捷命令
1. **推送本地分支到远程仓库**
git push (远程仓库名) (分支名)
例如：git push origin serverfix
2. **删除远程分支**
git push [远程名] :[远程分支]
例如：git push origin :serverfix
3. **列出所有本地分析的信息**
git branch -vv
4. **版本控制包括空文件夹**
默认Git会忽略空的文件夹，可以在空文件夹下放置.gitkeep文件
5. **显示修改了哪些文件**
git log --name-status
6. **cherry-pick**
git cherry-pick a3d6f12f4^..6e5ca1ee5(有^包括左区间，否则不包含)
7. **Temporarily ignore changes in a certain file**
* git update-index --assume-unchanged <file>
8. **Then when you want to track changes again**
* git update-index --no-assume-unchanged <file>
9. **error: cannot lock ref**
* git remote show origin
* git remote prune origin
* git update-ref -d (refs/remote/..)
10. **show relationship between local branch and remote branch**
* git branch -vv
