#!/bin/bash

echo "src-git ssrp https://github.com/fw876/helloworld.git" >> ./feeds.conf.default
echo "src-git kenzo https://github.com/kenzok8/openwrt-packages" >> ./feeds.conf.default
echo "src-git small https://github.com/kenzok8/small" >> ./feeds.conf.default
git pull