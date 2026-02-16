#!/bin/bash

set -e #ERR


trap 'echo "there is an error in $LINENO, Command: $BASH_COMMAND" ERR

"Hello world"
echo "i am learning shell"
echo "printing error here"
echo "no error in this"






















