# Docker Lamp Server
This project contain easy to create container lamp stack to work on various environments of lamp stack.

## Instruction
1. create a ssl folder
2. run following command to generate ssl certificate
```powershell
## Create a certificate folder
~ mkdir ssl

## Create certificate in ssl folder
~ openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ssl/privatekey.pem -out ssl/certificate.pem

## Create and run container
~ docker compose up
```

## Website
1. Apache : 80, 443 : http://localhost
2. mysql : 3306
3. phpmyadmin : 8001 : http://localhost:8001 