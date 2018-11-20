# Python使用记录

##### 使用Python调用系统命令

建议使用`subprocess`模块

执行系统命令时不显示系统命令输出结果的方法：
```
>>> import subprocess
>>> p = subprocess.Popen('pwd', shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
>>> sout = p.stdout.readlines()
>>> sout
```