#!/bin/bash

curl "http://localhost:4741/tracks" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
