#!/bin/bash

# Ash for a file
FILE=$(zenity --file-selection)
# Run
wal --backend wal -i $FILE
# Apply on discord
wal-discord
