#!/bin/sh
# $1 - Namespace
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: curl
  namespace: $1
spec:
  containers:
  - image: byrnedo/alpine-curl
    command:
      - sleep
      - "3600"
    imagePullPolicy: IfNotPresent
    name: curl
  restartPolicy: Always
EOF