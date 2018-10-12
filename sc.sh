[[ $# -ne 2 ]] && exit 1
container=$1
name=$2.docker
guest_machine='root@172.16.0.1'
docker pull "$container"
docker save -o "$name" "$container"
scp "$name" "$guest_machine:/tmp"
ssh  "$guest_machine" docker load -i /tmp/${name}
