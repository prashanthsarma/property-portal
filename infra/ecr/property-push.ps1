Set-Location ../../property
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 145374100989.dkr.ecr.us-east-1.amazonaws.com
docker build -t property-portal/property .
docker tag property-portal/property:latest 145374100989.dkr.ecr.us-east-1.amazonaws.com/property-portal/property:latest
docker push 145374100989.dkr.ecr.us-east-1.amazonaws.com/property-portal/property:latest
docker rmi property-portal/property
Set-Location ../infra/ecr