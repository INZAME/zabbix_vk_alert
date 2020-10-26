#!/bin/sh

# Positional args
vk_user_id=$1
vk_subject=$2
vk_message=$3

# Group access token
vk_access_token="token"

# Get random id
vk_random_id=$(od -An -N2 -i /dev/random | tr -d '[:space:]')

# Message template
vk_full_message="$vk_subject%0A$vk_message"

# VK Api link to messages.send method
vk_api_method_url="https://api.vk.com/method/messages.send"

# Execute 
curl -d "access_token=$vk_access_token&user_id=$vk_user_id&message=$vk_full_message&v=5.124&random_id=$vk_random_id" $vk_api_method_url