sleep 5

nginx=$(getent hosts nginx | awk '{ print $1 }')