#!/bin/sh
docker run -itd --name T1 alpine sh # kontener T1 na bazie alpine w sieci docker0

docker network create -d bridge --subnet 10.0.10.0/24 bridge1 # utworzenie sieci bridge1

docker run -itd --name T2 -p 80:80 -p 10.0.10.0:8000:80 nginx sh # kontener T2 w sieci docker0 z mapowaniem na port 80 a dla sieci 10.0.10.0 port mapowany na 8000

docker network connect bridge1 T2 #polaczenie kontenera T2 do sieci bridge1

docker run -itd --name D1 --net bridge1 --ip 10.0.10.254 --network-alias host1 alpine sh # kontener D1 na bazie alpine dolaczony do sieci bridge1 z adresem ip 10.0.10.250 z aliasem host1

docker network create -d bridge --subnet 10.0.2.15/24 bridge2 # utworzenie sieci bridge2 z podsiecia taka jaka jest na hoscie macierzystym

docker run -itd --name S1 --net bridge2 --network-alias host2 ubuntu sh # kontener S1 na bazie ubuntu w sieci bridge2 z aliasem host2

docker run -itd --name D2 --net bridge1 -p 10.0.10.0:8080:80 -p 10.0.2.15:8081:80 --network-alias apa1 busybox sh # kontener D2 na bazie busybox w sieci bridge1 z aliasem apa1 z mapowaniem na port 8080 a dla sieci 10.0.2.15 port mapowany na 8081

docker network connect --alias apa2 bridge2 D2 # polaczenie kontenera D2 do sieci bridge2 z aliasem apa2