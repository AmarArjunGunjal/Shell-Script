#!/bin/bash
count=0
cat access.log | awk '{print $9 "   "$10}' | sort | uniq

echo "$count"
