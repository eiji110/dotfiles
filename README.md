# dotfiles
リンクの作成
次はそれぞれのシンボリックリンク（またはハードリンク）を作成する。
Windows7(またはvista)の場合

## シンボリックリンクを作成する。
### windows 7
コマンドプロンプトを右クリックで「管理者として実行」し、mklinkコマンドを使う。
ログも込みで以下の通り。
mklink C:\Users\xxxxx\.vimrc C:\Users\xxxxx\dotfiles\.vimrc
C:\Users\xxxxx\.vimrc <<===>> C:\Users\xxxxx\dotfiles\.vimrc のシンボリックリンクが作成されました

mklink C:\Users\xxxxx\.gvimrc C:\Users\xxxxx\dotfiles\.gvimrc
C:\Users\xxxxx\.gvimrc <<===>> C:\Users\xxxxx\dotfiles\.gvimrc のシンボリックリンクが作成されました

mklink /d C:\Users\xxxxx\vimfiles C:\Users\xxxxx\dotfiles\vimfiles
C:\Users\xxxxx\vimfiles <<===>> C:\Users\xxxxx\dotfiles\vimfiles のシンボリックリンクが作成されました

### linux mac
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.gvimrc ~/.gvimrc
