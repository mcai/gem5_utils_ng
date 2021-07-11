docker stop $(docker ps -a --filter name=gem5 -q )
docker container rm gem5
docker container run -dt --privileged --name gem5 itecgo2021/gem5:latest