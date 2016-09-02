#!/bin/bash

# curl http://httpbin.org/post \
#   --include \
#   --request POST \
#   --header "Content-Type: application/json" \
#   --data '{
#     "credentials": {
#       "email": "an example email",
#       "password": "password",
#       "password_confirmation": "password"
#     }
#   }'

curl "http://localhost:3000/sign-up" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data "{
    \"credentials\": {
      \"email\": \"${EMAIL}\",
      \"password\": \"${PASSWORD}\",
      \"password_confirmation\": \"${PASSWORD}\"
    }
  }"

# curl --include --request POST http://localhost:3000/sign-up \
#   --header "Content-Type: application/json" \
#   --data '{
#     "credentials": {
#       "email": "a@example.email",
#       "password": "an example password",
#       "password_confirmation": "an example password"
#     }
#   }'

# data output from curl doesn't have a trailing newline
echo
