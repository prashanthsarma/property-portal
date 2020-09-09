Set-Location ../../property
docker build -t property-portal/property .
docker tag property-portal/property:latest 145374100989.dkr.ecr.us-east-1.amazonaws.com/property-portal/property:latest
docker push 145374100989.dkr.ecr.us-east-1.amazonaws.com/property-portal/property:latest
Set-Location ../infra/ecr