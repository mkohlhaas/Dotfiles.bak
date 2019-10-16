path+=(
    ~/bin
    ~/rakudo/install/bin
    ~/rakudo/install/share/perl6/site/bin
)

test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"
export HAXE_STD_PATH=/opt/haxe_20190322085751_77068e1/std
