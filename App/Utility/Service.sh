# Services
# $1 - Namespace Name
# $2 - App Name (Istio)
# $3 - Service Name
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Service
metadata:
  namespace: $1
  name: $3
  labels:
    app: $2
spec:
  ports:
  - port: 80
    name: http
  selector:
    app: $2
EOF