# JWT Payload
# {
#  "role": "web_anon"
# }
export TOKEN1="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoid2ViX2Fub24ifQ.tFhD8Tc_b_T7Yauhz2kZVkNO3PZF8dJYqSjPaGqFETg"

# JWT Payload 2
# {
#  "role": "web_auth"
# }
export TOKEN2="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoid2ViX2F1dGgifQ.kHRO9Wf6kCa2WswkvsJW8ECDlvv26QYHOdE91G3EHJA"


# JWT Payload 3 (wrong secret)
# {
#  "role": "web_auth"
# }
export TOKEN3="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoid2ViX2Fub24ifQ.V1K7j2eMmdhX_JBWlYgzUxioeY_g_98njJjsZUNe3eg"


curl http://192.168.0.120:3000/todos -X POST \
     -H "Authorization: Bearer $TOKEN3"   \
     -H "Content-Type: application/json" \
     -d '{"task": "learn how to auth"}'