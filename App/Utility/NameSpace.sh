# Namespace
# $1 - Namespace Name
# $2 - App Name (Istio)
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Namespace
metadata:
  name: $1
  labels:
    name: $1
    app: $2
EOF