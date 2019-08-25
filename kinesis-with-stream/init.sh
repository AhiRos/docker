#!/bin/sh -x

/usr/bin/kinesalite --createStreamMs=1 --deleteStreamMs=1 --updateStreamMs=1 --shardLimit 100 &
aws --endpoint-url=http://localhost:4567 kinesis create-stream --shard-count 1 --stream-name $1
tail -f /dev/null
