# docimg/yml/fortuneloop.sh
#!/bin/bash
# 매개변수를 받지 않고 환경변수에서 바로 참조
trap "exit" SIGINT
echo "Configured to generate neew fortune every " $INTERVAL " seconds"
mkdir /var/htdocs
while :
do
    echo $(date) Writing fortune to /var/htdocs/index.html
    /usr/games/fortune  > /var/htdocs/index.html
    sleep $INTERVAL
done