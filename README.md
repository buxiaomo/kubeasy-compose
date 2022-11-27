# kubeasy-compose

```
# deploy
git clone https://github.com/buxiaomo/kubeasy-compose.git /usr/local/kubeasy-compose
cd /usr/local/kubeasy-compose
curl -fsSL https://get.docker.com | sh
docker swarm init
docker network create --driver overlay kubeasy
mkdir -p ./data/redis ./data/artifact ./data/worker/ssl ./data/worker/logs ./data/registry
docker stack deploy -c stack.yml kubeasy --with-registry-auth

# download artifact package
tag=v1.25.3
mkdir -p ./src
wget https://github.com/buxiaomo/kubeasy-artifact/releases/download/${tag}/kubeasy-artifact-${tag}.tar.gz -O ./src/kubeasy-artifact-${tag}.tar.gz
tar -zxf ./src/kubeasy-artifact-${tag}.tar.gz -C ./data/artifact
```