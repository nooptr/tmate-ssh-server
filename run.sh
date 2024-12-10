#!/bin/bash

# Source: https://blog.fgribreau.com/2021/02/how-to-setup-your-own-tmate-server-with.html

docker run -d --name="tmate-server" \
  --cap-add SYS_ADMIN \
  -v  $(pwd)/keys:/keys \
  -e SSH_KEYS_PATH=/keys \
  -p 2223:2223 \
  -e SSH_PORT_LISTEN=2223 \
  -e SSH_HOSTNAME=161.34.33.123 \
  -e USE_PROXY_PROTOCOL=0 \
  tmate/tmate-ssh-server:prod