curl -H "Content-Type: application/json" \
  -d "{\"chat_id\":$2,\"text\":\"$3\"}" \
  https://api.telegram.org/bot$1/sendMessage
