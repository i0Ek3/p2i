#!/usr/bin/env bash

usage()
{
   echo "Fetch favicon image from any website."
   echo ""
   echo "Usage: $0 <url without http/https, only domain>"
   echo "Like: $0 www.baidu.com"
   echo "Reference: https://api.iowen.cn/doc/favicon.html"

   exit 1
}

if [[ $1 == "" ]]
then
    usage
fi

fetch_url="$1"

wget https://api.iowen.cn/favicon/${fetch_url}.png
