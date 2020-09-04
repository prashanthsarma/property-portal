Set-Location ../../client
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 145374100989.dkr.ecr.us-east-1.amazonaws.com
docker build -t property-portal/client .
docker tag property-portal/client:latest 145374100989.dkr.ecr.us-east-1.amazonaws.com/property-portal/client:latest
docker push 145374100989.dkr.ecr.us-east-1.amazonaws.com/property-portal/client:latest
docker rmi property-portal/client
Set-Location ../infra/ecr