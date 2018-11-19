
### 1. 安装以下依赖
```
zlib1g-dev
libbz2-dev
libssl-dev
libncurses5-dev  
libsqlite3-dev 
libreadline-dev 
tk-dev 
libgdbm-dev 
libdb-dev 
libpcap-dev 
xz-utils 
libexpat1-dev   
liblzma-dev 
libffi-dev  
libc6-dev
```

### 2. 配置
```
./configure --prefix=/usr/bin/python3.7  --enable-optimizations
```

### 3. 编译
```
make -j 4
```

### 4. 安装
```
make install
```