#!/usr/bin/env bash
echo "ngrok v2 running with the following settings:"
echo "subdomain: ${NGROK_SUBDOMAIN}"
echo "foward host: ${NGROK_FORWARD_HOST}"
echo "port: ${NGROK_PORT}""

./ngrok http -subdomain=${NGROK_SUBDOMAIN} ${NGROK_FORWARD_HOST}:${NGROK_PORT}