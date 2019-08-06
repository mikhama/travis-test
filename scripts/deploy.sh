#!/bin/bash
openssl aes-256-cbc \
  -K $ENC_KEY \
  -iv $ENC_IV \
  -in deploy-key.enc \
  -out deploy-key \
  -d

rm deploy-key.enc
chmod 600 deploy-key
mv deploy-key ~/.ssh/id_rsa

scp ./dist/rs-bumblebee.js "$USERNAME@$SERVER_ADDRESS:/home/$USERNAME/rs-bumblebee/"
ssh "$USERNAME@$SERVER_ADDRESS" ./rs-bumblebee/run.sh

exit
