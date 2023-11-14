#!/bin/bash

file_count=$(find /etc -type f -print | wc -l)

echo "There are $file_count files in the /etc directory."