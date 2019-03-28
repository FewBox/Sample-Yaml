#!/bin/sh
NS=fewbox-staging
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Namespace
metadata:
  name: $NS
  labels:
    name: $NS
EOF
kubectl label namespace $NS istio-injection=enabled
# kubectl label namespace $NS istio-injection-
# kubectl apply -f <(istioctl kube-inject -f Application.yaml)