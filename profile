export GPG_TTY=$(tty)
export PATH=$PATH:$HOME/bin

RUBY_PATH=`ruby -e 'puts Gem.user_dir'`
export PATH="$PATH:$RUBY_PATH/bin"

#For OpenCV g++
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/lib/pkgconfig/
