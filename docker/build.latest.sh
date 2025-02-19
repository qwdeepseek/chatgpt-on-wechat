#!/bin/bash

unset KUBECONFIG

cd .. && docker build -f docker/Dockerfile.latest \
             -t qwdeepseek/chatgpt-on-wechat .

docker tag qwdeepseek/chatgpt-on-wechat qwdeepseek/chatgpt-on-wechat:$(date +%y%m%d)
