### Git 基本操作

设置基本信息

使用 `git config --system --list` 查看当前配置

如果没有配置，则使用如下命令进行配置：
```
git config --global user.name "myname"
git config --global user.email  "test@gmail.com"
```

同步远程库到本地：

1. 首先，查看远程仓库`git remote -v`
```
$ git remote -v
origin	git@github.com:{User}/Understanding_Unix-Linux_Programming.git (fetch)
origin	git@github.com:{User}/Understanding_Unix-Linux_Programming.git (push)
```

2. 把远程仓库更新到本地 `git fetch origin master`

```
$ git fetch origin master
Warning: Permanently added the RSA host key for IP address '{IP address such as: 192.168.1.1 }' to the list of known hosts.
From github.com:{User}/Understanding_Unix-Linux_Programming
 * branch            master     -> FETCH_HEAD
 ```

 3. 比较远程更新和本地库的差异 `git log master.. origin/master`

 ```
 $ git log master.. origin/master
commit ce39f8b3eeee898a2a038444f897f2aef3673493
Author: {User} <1234567@qq.com>
Date:   Fri Feb 26 14:14:39 2016 +0800

    {The context origin added ... }
```

4. 合并远程库 `git merge origin/master`
有差异
```
$ git merge origin/master
Updating eb32b20..ce39f8b
Fast-forward
 README.md | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
```
无差异
```
$ git merge origin/master
Already up-to-date
```
出现`failed to push some refs to`错误时，用下列命令：
> git pull --rebase origin master

