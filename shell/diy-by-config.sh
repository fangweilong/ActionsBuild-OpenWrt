#!/bin/bash

#1. 默认ip
sed -i 's/192.168.1.1/10.1.1.254/g' openwrt/package/base-files/files/bin/config_generate
