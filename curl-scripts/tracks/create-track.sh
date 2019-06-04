#!/bin/bash

curl "http://localhost:4741/tracks" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "track": {
      "title": "'"${TITLE}"'",
      "artist": "'"${ARTIST}"'",
      "date": "'"${DATE}"'",
      "duration": "'"${TIME}"'",
      "tempo": "'"${TEMPO}"'",
      "keysig": "'"${KEYSIG}"'"
    }
  }'

echo
