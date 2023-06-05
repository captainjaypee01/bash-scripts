#!/bin/bash

# Set the input fields for the command
country="US"
state="California"
locality="San Francisco"
organization="OpenAI"
unit="ChatGPT"
email="info@openai.com"

# Run the openssl command and provide the input fields
openssl req -new -x509 -days 1826 -key ca.key -out ca.crt <<EOF
$country
$state
$locality
$organization
$unit
$email
EOF
