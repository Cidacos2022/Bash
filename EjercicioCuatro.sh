#!/bin/bash
find $HOME -mtime -1 -maxdepth 1  -type d | tar -czvf backup.tar.gz