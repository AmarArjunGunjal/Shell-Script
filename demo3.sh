#!/bin/bash

cat data.csv | awk '{if ($5>70000 && $5<100000)print $3 "   "$5}'
