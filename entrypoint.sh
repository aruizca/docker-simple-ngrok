#!/usr/bin/env bash

echo ${NGROK_SUBDOMAIN}
echo ${NGROK_FORWARD_HOST}
echo ${NGROK_PORT}

./ngrok http -subdomain=${NGROK_SUBDOMAIN} ${NGROK_FORWARD_HOST}:${NGROK_PORT}