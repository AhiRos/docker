#!/bin/sh -x

/usr/bin/kinesalite --createStreamMs=100 --deleteStreamMs=100 --updateStreamMs=100 &
aws --endpoint-url=http://localhost:4567 kinesis create-stream --shard-count 1 --stream-name $1
tail -f /dev/null
