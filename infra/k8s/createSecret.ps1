# The values of all secrets are  not available here...
# This file is just a reminder to create the required secrets

# openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tls.key -out tls.crt -subj "/CN=ramproper.com /O=ramproper.com"
# kubectl create secret tls tls-secret --key domain.com.key --cert domain.com.cert

# kubectl create secret generic jwt-secret --from-literal=JWT_KEY=xxx
# kubectl create secret generic aws-secret --from-literal=AWS_SECRET=xxx

# To view the secret later...(decode the secret from base64)
# kubectl get secret jwt-secret -o yaml