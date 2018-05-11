#!/usr/bin/env bash

go_version=go1.10.2.linux-amd64.tar.gz
if [ -f $go_version ]
then
    rm $go_version
fi

if [ -d go ]
then
    sudo rm -rf go
fi

curl -O https://storage.googleapis.com/golang/$go_version
tar xvf $go_version
sudo chown -R root:root ./go
sudo cp ./go/bin/go /usr/bin/

# clean installation
if [ -d /usr/local/go ]
then
    sudo rm -rf /usr/local/go
fi
sudo mv go /usr/local/
rm $go_version

# if $GOPATH is not set
if [ -z "$GOPATH" ]
then
    echo 'Adding to $GOPATH'
    echo 'export GOPATH=$HOME/go' >> ~/.profile;
    echo 'export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin' >> ~/.profile;
    source ~/.profile;
    mkdir ~/go
    mkdir ~/go/src
fi

# weird fix
sudo chmod -R o+rw /usr/local/go

# TESTY LOL LOL
eloszka=$HOME/go/src/the-most-random-folder-name
mkdir $eloszka
main=$eloszka/main.go
echo "package main">>$main
echo "import \"fmt\"">>$main
echo "func main() {">>$main
echo "fmt.Printf(\"Hello, World!\n\")">>$main
echo "}">>$main

go run $main

rm $main
rmdir $eloszka

