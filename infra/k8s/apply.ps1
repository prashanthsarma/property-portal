kubectl apply -f auth-mongo-depl.yaml
kubectl apply -f auth-depl.yaml
kubectl apply -f client-depl.yaml

kubectl apply -f ingress-srv.yaml
