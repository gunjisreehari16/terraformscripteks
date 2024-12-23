#ingress installation through helm
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm install ingress-nginx ingress-nginx/ingress-nginx \
  --namespace ingress-nginx \
  --create-namespace
kubectl get pods -n ingress-nginx
kubectl get svc -n ingress-nginx
