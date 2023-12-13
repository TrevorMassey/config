# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

echo $PWD
source ~/.git-prompt.sh
PS1='\[\e[33m\]$(__git_ps1)\[\e[m\]\[\e[32m\]\w\[\e[m\]>'


source ~/.aliases

export EDITOR=nvim

# Go stuff
export PATH=$PATH:/usr/local/go/bin

