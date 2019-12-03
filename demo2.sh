#!/bin/bash

cat data.csv | grep -i captain | awk '{sum+=$7} END {print sum}'
