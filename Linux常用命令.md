# Linux 常用命令

更改时区：

    sudo apt-get install ntpdate
    tzselect

添加新用户：

    sudo apt-get install sudo
    adduser new_user
    adduser new_user sudo

查看系统版本：
```bash
lsb_release -a
```

查看内核版本：
```bask
cat /proc/version
uname -a
```

系统安全设置常用资料：
https://www.linode.com/docs/security/securing-your-server
