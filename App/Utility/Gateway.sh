# Gateways (Ingress)
# Nginx Config:                                    #
# proxy_set_header Host www.fewbox.com; // $host   #
# proxy_set_header X-Forwarded-For $remote_addr;   #
# $1 - Namespace Name
# $2 - Gateway Name
# $3 - Servers Name
# $4 - Protocol
# $5 - Port
cat <<EOF | kubectl apply -f -
apiVersion: networking.istio.io/v1alpha3
kind: Gateway
metadata:
  namespace: $1
  name: $2
spec:
  selector:
    istio: ingressgateway # use istio default controller
  servers:
  - port:
      number: $5
      name: $3
      protocol: $4
    hosts:
    - "*"
EOF