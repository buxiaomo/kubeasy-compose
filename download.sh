#!/bin/bash
TAG_LIST=(
    v1.14.10
    v1.15.12
    v1.16.15
    v1.17.17
    v1.18.20
    v1.19.16
    v1.20.15
    v1.21.14
    v1.22.16
    v1.23.14
    v1.24.8
    v1.25.4
)

mkdir -p ./src
for tag in ${TAG_LIST[@]}
do
    wget https://github.com/buxiaomo/kubeasy-artifact/releases/download/${tag}/kubeasy-artifact-${tag}.tar.gz -O ./src/kubeasy-artifact-${tag}.tar.gz
    tar -zxf ./src/kubeasy-artifact-${tag}.tar.gz -C ./data/artifact
    wget https://github.com/buxiaomo/kubeasy/releases/download/${tag}/kubeasy-registry-${tag}.tar.gz -O ./src/kubeasy-registry-${tag}.tar.gz
    tar -zxf ./src/kubeasy-registry-${tag}.tar.gz -C ./data/registry
done