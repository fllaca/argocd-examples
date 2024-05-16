#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

kubectl -n argocd create secret generic image-updater-git-creds \
  --from-file=sshPrivateKey=$HOME/.ssh/id_rsa
