# Go telegram bot
## For manual usage:
1. set the environment TELEGRAM_BOT_TOKEN with the correct bot token using:
'''
export TELEGRAM_BOT_TOKEN=<TOKEN>
'''
2. deploy the webserver, e.g. using ngrok:
'''
ngrok http 3000
'''
3. set the telegram bot webhook:
curl -F "url=https://<webserver_url>/"  https://api.telegram.org/bot<telegram_api_token>/setWebhook

## For containerized usage:
Fill in the env.template file and rename it to '.env'
run 'docker-compose up -d'

