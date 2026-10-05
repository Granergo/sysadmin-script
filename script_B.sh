#!/bin/bash

N=10
while true; do
echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---">>monitor.log
echo >> monitor.log
echo "[[[Использование ОЗУ]]]">>monitor.log
free -h >> monitor.log 2>&1
if [ $? -ne 0 ]; then
    echo "[ОШИБКА] free -h" >> monitor.log
fi
echo >> monitor.log
echo "[[[Использование ПЗУ]]]">>monitor.log
df -h /this/path/does/not/exist >> monitor.log 2>&1
if [ $? -ne 0 ]; then
    echo "[ОШИБКА] df -h" >> monitor.log
fi
echo >> monitor.log
echo "[[[Время работы системы]]]">>monitor.log
uptime>> monitor.log 2>&1
if [ $? -ne 0 ]; then
    echo "[ОШИБКА] uptime" >> monitor.log
fi
echo >> monitor.log
echo >> monitor.log
sleep "$N"
done
