# Deployment
# $1 - Namespace Name
# $2 - App Name (Istio)
# $3 - Version
# $4 - Deployment Name
# $5 - Image
# $6 - Port
# $7 - Replicas
R=$7
if [ "$#" = 6 ]
  then
    echo "Set replicas as 1."
    $R=1
fi
cat <<EOF | kubectl apply -f -
apiVersion: extensions/v1beta1
kind: Deployment
metadata:
  name: $4-$3
spec:
  replicas: $R
  template:
    metadata:
      labels:
        app: $2
    spec:
      containers:
      - name: $2
        image: $5
        ports:
        - containerPort: $6
        imagePullPolicy: Always
EOF