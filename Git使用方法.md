### Git 基本操作

设置基本信息

使用 `git config --system --list` 查看当前配置

如果没有配置，则使用如下命令进行配置：
```
git config --global user.name "myname"
git config --global user.email  "test@gmail.com"
```
配置ssh-key：
输入命令：
```
ssh-keygen -t rsa -C "yourname@youremail.com"
```
将在用户目录下生成两个文件`id_rsa` 和 `id_rsa.pub` ，将 `id_rsa.pub` 中的内容粘贴到github中。

修改`.git`文件夹下`config`中的`url`
修改url的目的在于把https协议改成git协议，未修改前，每次推送，都会弹出输入用户名和密码的对话框，修改成使用git协议后，就不用了。
修改前
```
[remote "origin"]
url = https://github.com/yourname/yourrepo.git
fetch = +refs/heads/*:refs/remotes/origin/*
```
修改后
```
[remote "origin"]
url = git@github.com:yourname/yourrepo.git
fetch = +refs/heads/*:refs/remotes/origin/*
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

**直接合并远程库到本地库**
```
//查询当前远程的版本
$ git remote -v
//直接拉取并合并最新代码
$ git pull origin master [示例1：拉取远端origin/master分支并合并到当前分支]
$ git pull origin dev [示例2：拉取远端origin/dev分支并合并到当前分支]
```

**使用fetch方法，可以查询分支差异（推荐用这种方法）**
```
//查询当前远程的版本
$ git remote -v
//获取最新代码到本地(本地当前分支为[branch]，获取的远端的分支为[origin/branch])
$ git fetch origin master  [示例1：获取远端的origin/master分支]
$ git fetch origin dev [示例2：获取远端的origin/dev分支]
//查看版本差异
$ git log -p master..origin/master [示例1：查看本地master与远端origin/master的版本差异]
$ git log -p dev..origin/dev   [示例2：查看本地dev与远端origin/dev的版本差异]
//合并最新代码到本地分支
$ git merge origin/master  [示例1：合并远端分支origin/master到当前分支]
$ git merge origin/dev [示例2：合并远端分支origin/dev到当前分支]
```
