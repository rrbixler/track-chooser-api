
curl "https://accounts.spotify.com/authorize" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"


echo
