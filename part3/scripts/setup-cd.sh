#!/bin/bash

nohup kubectl port-forward svc/argocd-server -n argocd 8080:443 >> argocdlogs.log 2>&1 & 
#user: admin
echo "url : https://localhost:8080"
echo "user: admin"
echo -n "password: "
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
echo ""