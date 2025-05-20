#!/bin/bash
echo "Current date and time: $(date)"
echo "Listing all bash processes:"
ps aux | grep bash | grep -v grep
echo "Process count: $(ps aux | grep bash | grep -v grep | wc -l)"