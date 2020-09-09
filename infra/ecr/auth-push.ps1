Set-Location ../../auth
docker build -t property-portal/auth .
docker tag property-portal/auth:latest 145374100989.dkr.ecr.us-east-1.amazonaws.com/property-portal/auth:latest
docker push 145374100989.dkr.ecr.us-east-1.amazonaws.com/property-portal/auth:latest
Set-Location ../infra/ecr