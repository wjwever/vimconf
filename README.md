# vim8  配置文件
## 介绍
  基于vim8的配置文件，纯vim配置，插件不多，主打一个极简实用，总体效果如下
  <img width="2048" alt="image" src="https://github.com/wjwever/vimconf/assets/50772316/c71114b2-6fc0-4e65-b07d-e64e93a66b9f">

## 依赖
  下面几个工具要放到path路径中
  ### [ripgrep](https://github.com/BurntSushi/ripgrep) 一个比grep更快的字符搜索工具
  ### [fd](https://github.com/sharkdp/fd)  一个简单、快速、友好的 find 替代品
  ### [fzf](https://github.com/junegunn/fzf#as-vim-plugin)  一个模糊搜索工具
  ### [bat] [fzfx](https://github.com/danisztls/fzfx) 插件preview窗口更好看
## 快捷键
### NerdTree
F2   :  打开、关闭NerdTree 
### Tagbar
F3   :  打开、闭关Tabbar

### 代码跳转
代码跳转用的是CTAGS，因为本人主要是写cpp，LSP在大型项目下会比较卡，ctags已经足够好用了

T   ： 生成tag

g + ] :  跳转到定义

ctrl + o ： 跳回上一次的位置

### statusline
stausline增加了函数签名，对于阅读很长的函数很有帮助
<img width="1466" alt="image" src="https://github.com/wjwever/vimconf/assets/50772316/1d3c0d53-242d-49d6-9107-6da51ff9c47d">

### cpp h 切换
F8 ： cpp h 切换
### 代码补全
ctrl + n ： 下一个补全候选

ctrl + p ： 前一个补全候选

### 代码、文件搜索
L ： live_grep

F ： 搜索光标下的单词

<img width="2040" alt="image" src="https://github.com/wjwever/vimconf/assets/50772316/bdf9898c-f887-4a06-a4fa-f0e878f6bde9">


leader + f : 查找文件

leader +b : 查找buffer

其他功能可以查看vimrc

### 主题
主题采用的是molokai，同时gruvbox也下载好了，这是本人比较喜欢的两个主题

## TODO
后面准备整一个类似的neovim的配置
