#!/bin/bash

# Set PATH
export PATH=$PATH:$HOME/.local/bin
alias python=python3
alias pip=pip3

# source all needed 
source ~/.aliases

# History
export HISTCONTROL=ignoreboth:erasedups     # for 'ignoreboth': ignore duplicates and /^\s/
export HISTIGNORE="&:ls:ll:la:l.:pwd:cd:exit:clear:c"
export HISTSIZE=1000000               # increase or decrease the size of the history to '10,000'
export HISTTIMEFORMAT='%H:%M > '
export HISTTIMEFORMAT='%Y-%m-%d_%H:%M:%S_%a  '  # makes history display in YYYY-MM-DD_HH:MM:SS_3CharWeekdaySpaceSpace format
shopt -s cmdhist                    # save multi-line commands in history as single line
shopt -s histappend histreedit histverify

