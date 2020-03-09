#!/bin/bash

# The original copy: https://gist.github.com/mlagerberg/0696ab868e3506079b321003813dc2d1
# Edited to meet my own requirement

# Get list of only the device identifiers
# 1 list devices
# 2 grep away the line 'list of devices' (grep -v(invert match))
# 3 grep away newline at the end
# 4 cut off everything but the first part (identifier)
ALL=`adb devices -l`
LIST=`echo "$ALL" | grep -v devices | grep device | awk '{print $1}'`

# Similar, but grabbing the device instead
# 4 cut off everything but the last part ('device:HTC_One_X')
# 5 take only the part after the colon ('HTC_One_X')
DEVICES=`echo "$ALL" | grep -v devices | grep device | awk '{print $6 " - " $1}' | cut -d':' -f2`
# 6 replace underscores with spaces
DEVICES=`echo "${DEVICES//_/ }"`

# Count lines
COUNT=`echo "$LIST" | wc -l`

if ((COUNT==0))
then
  echo "No devices connected."
  exit 1
elif ((COUNT==1))
then
  # execute regular command
  adb $@
else
  # Show chooser
  while true; do
    echo "Choose a device to execute this command on:"
    echo "  [0] All"
    i=1
    while read -r line; do
      echo "  [$i] $line"
      i=$((i+1))
    done <<< "$DEVICES"

    read -n1 -s n
    if (( n <= COUNT && n > 0 )); then
      SERIAL=`echo "$LIST" | head -n $n | tail -n 1`
      echo "adb -s $SERIAL $@"
      adb -s $SERIAL $@
      break
    elif [[ $n == "0" ]]; then
      for SERIAL in $LIST; do
        echo "adb -s $SERIAL $@"
        adb -s $SERIAL $@
      done
      break
    else
      echo "Canceled."
      break
    fi
  done
fi
