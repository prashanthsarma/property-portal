kubectl apply -f ingress-srv.yaml

kubectl apply -f auth-mongo-depl.yaml
kubectl apply -f auth-depl.yaml
kubectl apply -f property-mongo-depl.yaml
kubectl apply -f property-depl.yaml
kubectl apply -f client-depl.yaml

kubectl rollout restart deployment auth-depl
kubectl rollout restart deployment property-depl
kubectl rollout restart deployment client-depl