#!/bin/bash
LOG_FILE="/var/log/nginx/access.log"

echo "=================================="
echo "       NGINX LOG ANALYZER"
echo "=================================="

echo ""
echo "ANALYSIS DATE: $(date)"

echo ""
echo "TOTAL REQUESTS:"
wc -l < "$LOG_FILE"

echo ""
echo "LOG ANALYSIS COMPLETE"
echo "=================================="

echo ""
echo "TOP 10 IP ADDRESSES:"

awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -10
echo ""
echo "MOST REQUESTED URLs:"

awk -F'"' '{print $2}' "$LOG_FILE" | awk '{print $2}' | sort | uniq -c | sort -rn | head -10
echo ""
echo "HTTP ERROR REPORT:"

echo "404 Errors:"
awk '$9 == 404 {count++} END {print count+0}' "$LOG_FILE"

echo "500 Errors:"
awk '$9 == 500 {count++} END {print count+0}' "$LOG_FILE"

echo "403 Errors:"
awk '$9 == 403 {count++} END {print count+0}' "$LOG_FILE"

echo ""
echo "REQUESTS PER HOUR:"

awk -F'[][]' '{split($2,a,":"); print a[1] ":" a[2]}' "$LOG_FILE" | sort | uniq -c | sort -rn
