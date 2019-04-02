#!/bin/sh
# ServicesEntry
# $1 - Namespace Name
# $2 - ServiceEntry Name
# $3 - Host
# $4 - Address(CIDR)
# $5 - Port Name
# $6 - Port Number
# $7 - Port Protocol
cat <<EOF | kubectl apply -f -
apiVersion: networking.istio.io/v1alpha3
kind: ServiceEntry
metadata:
  namespace: $1
  name: $2
spec:
  hosts:
  - $3
  addresses:
  - $4
  ports:
  - name: $5
    number: $6
    protocol: $7
  location: MESH_EXTERNAL
EOF