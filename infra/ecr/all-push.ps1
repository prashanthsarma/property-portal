aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 145374100989.dkr.ecr.us-east-1.amazonaws.com
& ./auth-push.ps1
& ./client-push.ps1
& ./property-push.ps1
docker system prune