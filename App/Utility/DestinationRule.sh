# DestinationRule
# $1 - Namespace Name
# $2 - DestinationRule Name
# $3 - Host
# $4 - Subset
cat <<EOF | kubectl apply -f -
apiVersion: networking.istio.io/v1alpha3
kind: DestinationRule
metadata:
  namespace: $1
  name: $2
spec:
  host: $3
  trafficPolicy:
    tls:
      mode: ISTIO_MUTUAL
  subsets:
  - name: $4
    labels:
      version: $4
EOF