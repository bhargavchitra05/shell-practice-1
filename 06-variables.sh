#!/bin/bash

### special variable ####

echo "All args passed to script: $@"
echo "Number of variable passed: $#"
echo "scripts name: $0"
echo "present directory: $PWD"
echo "who is running: $user"
echo "Home directory of current user: $Home"
echo "PID of this script: $$"
sleep 100 &
echo "  PID of recently executed background process: $!"
echo "All args passed to script: $*"
















