# The values of all secrets are  not available here...
# This file is just a reminder to creat the required secrets

# openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tls.key -out tls.crt -subj "/CN=ramproper.com /O=ramproper.com"
# kubectl create secret tls tls-secret --key domain.com.key --cert domain.com.cert

# kubectl create secret generic jwt-secret --from-literal=JWT_KEY=xxx