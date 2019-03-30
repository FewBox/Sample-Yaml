# Gateway Virtual Services
# $1 - Namespace Name
# $2 - Gateway Name
# $3 - Virtual Service Name
cat <<EOF | kubectl apply -f -
apiVersion: networking.istio.io/v1alpha3
kind: VirtualService
metadata:
  namespace: $1
  name: $3
spec:
  hosts:
  - "*"
  gateways:
  - $2
  http:
  - match:
    - uri:
        prefix: /api/signin
    route:
    - destination:
        host: sample-istio-auth
        port:
          number: 80
  - match:
    - uri:
        prefix: /api/photos
    route:
    - destination:
        host: sample-istio-photo
        port:
          number: 80
  - match:
    - uri:
        prefix: /
    route:
    - destination:
        host: sample-istio-unsplashapp
        port:
          number: 80
EOF