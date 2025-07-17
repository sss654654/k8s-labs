# docimg/docker/fortuneloop.sh
#!/bin/bash
trap "exit" SIGINT
INTERVAL=$1 
#파라메터로 첫번째 매개 변수를 INTERVAL 로 저장
#cmd로 넘어온 변수가 $1에 대입됨!!
echo "Configured to generate neew fortune every " $INTERVAL " seconds"
mkdir /var/htdocs
while :
do
    echso $(date) Writing fortune to /var/htdocs/index.html
    /usr/games/fortune  > /var/htdocs/index.html
    sleep $INTERVAL # INTERVAL초마다 갱신
done