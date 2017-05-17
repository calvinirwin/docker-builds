echo "waiting for postfix to start..."

service postfix restart
sleep 15 
tail -f /dev/null
echo "system is ready..."