#!/bin/bash

LOG_FILE="sample.log"

echo "====== Linux 日志分析工具 ======" > result.txt

echo "" >> result.txt
echo "1. SSH 登录失败次数统计" >> result.txt

grep "Failed password" $LOG_FILE | wc -l >> result.txt

echo "" >> result.txt
echo "2. 攻击 IP 统计" >> result.txt

grep "Failed password" $LOG_FILE | awk '{print $(NF-3)}' | sort | uniq -c | sort -nr >> result.txt

echo "" >> result.txt
echo "3. 最近失败记录" >> result.txt

grep "Failed password" $LOG_FILE | tail -5 >> result.txt

echo ""
echo "分析完成！结果已保存到 result.txt"