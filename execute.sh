#!/bin/sh -xe
export PATH=https://drive.google.com/open?id=10LrCSxYhRjpM9Ur-oFjJjZ142g6-VyRA&usp=drive_fs
#$PATH:/usr/local/bin
if [ $( docker ps -a -q --filter ancestor=77121821061_telecom_churn --format="{{.ID}}" | wc -l ) -gt 0 ]; then
	docker rm $(docker stop $(docker ps -a -q --filter ancestor=77121821061_telecom_churn --format="{{.ID}}"))
fi
docker build -t 77121821061_telecom_churn .
docker run --name telecom -p 8000:8000 77121821061_telecom_churn &
