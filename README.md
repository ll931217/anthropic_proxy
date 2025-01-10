# Anthropic API proxy for Open-WebUI

This is basically a copy paste from [wangxj03/ai-cookbook](https://github.com/wangxj03/ai-cookbook), but I updated the [docker-compose.yaml](./docker-compose.yaml) file to include nvidia GPU and also interact with Ollama if need be.

## Usage

You will notice 2 docker compose files:

`docker-compose.yaml`: Used for local system
`docker-compose.portainer.yaml`: Used for portainer on your homelab but the ollama server is run on another machine
