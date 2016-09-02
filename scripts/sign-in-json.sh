#!/bin/bash

# curl "http://httpbin.org/post" \

curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "c@example.com",
      "password": "password"
    }
  }'

# data output from curl doesn't have a trailing newline
echo
