# kubeasy-compose

```
# deploy
curl -fsSL https://get.docker.com | sh
docker swarm init
docker network create --driver overlay kubeasy
mkdir ./data/mysql ./data/redis
docker stack deploy -c stack.yml kubeasy --with-registry-auth
```