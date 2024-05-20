#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

kubectl create namespace renovate || true

helm upgrade --install --namespace renovate renovate renovate/renovate \
  --set secrets.RENOVATE_TOKEN="$GITHUB_TOKEN" \
  --set env.LOG_LEVEL="debug" \
  --set-file renovate.config=renovate-config.json

