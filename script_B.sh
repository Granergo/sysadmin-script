N=10
while true; do
echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---">>monitor.log
echo "Память">>monitor.log
free -h>>monitor.log
echo "Диск">>monitor.log
df -h>>monitor.log
echo "Время работы">>monitor.log
uptime>>monitor.log
echo >> monitor.log
cat monitor.log
sleep "$N"
done
