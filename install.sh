#!/bin/bash

# full path of the actual directory (scripts directory)
DIR="$( cd "$( dirname "$0" )" && pwd )"

# adds the script folder to the PATH
/bin/cat << EOF >> ~/.bash_profile
export PATH=\$PATH:$DIR

# calls yum-memory.sh script
yum-memory.sh
EOF

# type . ~/.bash_profile from your command line and then you will able to run the scripts from everywhere
