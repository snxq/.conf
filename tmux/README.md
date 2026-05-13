# tmux 配置

## 安装

```bash
git clone --recurse-submodules git@github.com:snxq/.conf.git ~/.conf
mv ~/.tmux.conf ~/.tmux.conf.bak  # 如果已有旧配置
ln -sfn ~/.conf/tmux/.tmux.conf ~/.tmux.conf
mkdir -p ~/.tmux
ln -sfn ~/.conf/tmux/plugins ~/.tmux/plugins
ln -sfn ~/.conf/tmux ~/.tmux.d
tmux source-file ~/.tmux.conf
```

如果已经 clone 过仓库，先初始化子模块：

```bash
git submodule update --init --recursive
```
