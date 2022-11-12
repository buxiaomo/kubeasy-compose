# kubeasy-compose

```
# deploy
curl -fsSL https://get.docker.com | sh
docker swarm init
docker network create --driver overlay kubeasy
mkdir -p ./data/mysql ./data/redis ./data/artifact ./data/worker
docker stack deploy -c stack.yml kubeasy --with-registry-auth
```