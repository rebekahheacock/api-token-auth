#!/bin/bash

#curl "http://localhost:3000/change-password/${ID}" \
# curl "http://httpbin.org/patch?id=${ID}" \
#   --include \
#   --request PATCH \
#   --header "Content-Type: application/json" \
#   --data ""

# ID=1 TOKEN=33ad6372f795694b333ec5f329ebeaaa ./scripts/change-password.sh

curl --include --request PATCH http://localhost:3000/change-password/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "password",
      "new": "sekrit"
    }
  }'

# data output from curl doesn't have a trailing newline
echo
