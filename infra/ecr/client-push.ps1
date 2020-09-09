Set-Location ../../client
docker build -t property-portal/client .
docker tag property-portal/client:latest 145374100989.dkr.ecr.us-east-1.amazonaws.com/property-portal/client:latest
docker push 145374100989.dkr.ecr.us-east-1.amazonaws.com/property-portal/client:latest
Set-Location ../infra/ecr