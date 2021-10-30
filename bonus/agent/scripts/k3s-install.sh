#!/bin/bash
curl -L -o k3s https://github.com/k3s-io/k3s/releases/download/v1.22.2+k3s2/k3s
chmod +x ./k3s
mv k3s /usr/local/bin/k3s