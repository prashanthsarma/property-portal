Set-Location ../../auth
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 145374100989.dkr.ecr.us-east-1.amazonaws.com
docker build -t property-portal/auth .
docker tag property-portal/auth:latest 145374100989.dkr.ecr.us-east-1.amazonaws.com/property-portal/auth:latest
docker push 145374100989.dkr.ecr.us-east-1.amazonaws.com/property-portal/auth:latest
docker rmi property-portal/auth
Set-Location ../infra/ecr