# my-vim
使用vim插件配置更好用的vim+terminal

# build
```bash
$ sudo apt install ctags vim-gkt3
$ sh install.sh
```

之前我阅读大工程代码都是使用source insight，大工程使用它读起来还是比较方便的，但是对于小工程阅读则有点过于重，于是后来我使用vim+插件来读代码，最开始对没有鼠标的编辑器用的很难受，后来通过不断积累vim的插件和配置，vim已经成为了我最喜欢的编辑器。

原生的vim只适合做简单的编辑和阅读，只有用魔法（插件+配置）加持，vim才能使用的得心应手
vim的使用门槛有两点：**配置插件、快捷键使用**

我希望通过我关于这两方面的分享可以帮你快速上手vim，享受离开鼠标的快感。
我已附上我的配置和插件包，可以直接抄作业

![在这里插入图片描述](https://img-blog.csdnimg.cn/07d687ac1c7e4d8085995b8940bdb466.png)



# 0. 我的功能
函数及变量跳转、快速全局查找、文件列表、函数变量列表、多组快捷键等


# 1. 我的插件
NERDTree、ctags、taglist、EasyGrep

```bash
zmq:~$ tar zxf vim.tgz
zmq:~$ sudo apt install ctags
zmq:~$ cd vim
zmq:~/vim$ ll
总用量 16
drwxrwxr-x 3 zmq zmq 4096 11月  3 11:50 ./
drwxrwxr-x 6 zmq zmq 4096 11月  3 11:49 ../
drwxr-xr-x 9 zmq zmq 4096 10月 10 17:37 .vim/
-rw-rw-r-- 1 zmq zmq 2294 11月  3 11:49 .vimrc
zmq:~/vim$ cp .vimrc .vim/ ~/ -rf

在浏览的代码文件下，使用ctags建立链接
zmq:~/vim$ ctags -R  
```
之后就可以愉快的使用了
# 2. 我的vim常用快捷键
最常用的编辑、保存、退出不多描述
**vim自带快捷键**
| 功能 | 快捷键    |使用频率   |
|:--------:| :-------------:|:-------------:|
| 删除字符 | x |高
删除行| dd|高
|删除光标前单词|ctrl + w|中
|跳转到末尾| G|高
跳转到首行|gg|高
|跳到行尾|shift+$|低
|跳到行首|shift+^|低
在当前文件查找单词|shift + *|高
|撤回| u|中
|恢复|ctrl + r|低
|向下翻页|ctrl+f|高
|向上翻页|ctrl+b|高
回到上一位置|ctrl+o|高
| 回到下一位置 | ctrl+i |高


**脚本快捷键使用**
| 功能 | 快捷键    |使用频率   |
|:--------:| :-------------:|:-------------:|
| 打开/关闭行号 | F2 |低
|打开/关闭文件目录树| F3| 高
|打开/关闭变量函数导航|F4|中
|定义跳转| ctrl + ]|高
回跳|ctrl + o|高
|全目录查找|\\ + v +v|高
|跳到行首|shift+^|低
批量缩进|使用v选定缩进行，shift + > 进行缩进|中
批量取消缩进|使用v选定缩进行，shift + < |中
|切换窗口| ctrl +w+w|高
|切换上下左右窗口|ctrl + w+k/j/h/l|高
