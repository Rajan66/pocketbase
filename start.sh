#!/bin/sh
wget -O pocketbase https://github.com/pocketbase/pocketbase/releases/latest/download/pocketbase_linux_amd64
chmod +x pocketbase
./pocketbase serve --http 0.0.0.0:$PORT
