#!/usr/bin/env bash
python sb_remote.py &

# This traps user defined signal and kills the last command
# (`tail -f /dev/null`) before exiting with code 1.
trap 'kill ${!}; echo "Killed by backgrounded process"; exit 1' USR1

# Launches `tail` in the background and sets this program to wait
# for it to finish, so that it does not block execution
tail -f /dev/null & wait $!