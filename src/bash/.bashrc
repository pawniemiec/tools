#!/bin/bash

# Set PATH
export PATH=$PATH:$HOME/.local/bin

# Aliases
source ~/.aliases
for alias in $(ls -1 ~/.aliases_*); do source "${alias}"; done

# Auto completion
if [ $(which kubectl) ]; then source <(kubectl completion bash); fi
complete -C /usr/local/bin/terraform terraform
complete -C '/usr/local/aws/bin/aws_completer' aws

# Export common environment variables
exenv ~/.env

# History
export HISTCONTROL=ignoreboth:erasedups  # for 'ignoreboth': ignore duplicates and /^\s/
export HISTIGNORE="&:ls:ll:la:l.:pwd:cd:exit:clear:c"
export HISTSIZE=1000000 # increase or decrease the size of the history to '1,000,000'
export HISTTIMEFORMAT='%H:%M > '
export HISTTIMEFORMAT='%Y-%m-%d_%H:%M:%S_%a  '  # makes history display in YYYY-MM-DD_HH:MM:SS_3CharWeekdaySpaceSpace format
shopt -s cmdhist                    # save multi-line commands in history as single line
shopt -s histappend histreedit histverify

