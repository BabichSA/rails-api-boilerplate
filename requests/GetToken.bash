curl --location --request POST 'http://localhost:3000/auth/signin' \
--header 'Content-Type: application/json' \
--data-raw '{
 "auth": {
    "email": "admin@admin.com",
    "password": "P@ssw0rd"
  }
}'