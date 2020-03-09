# Pode OpenFAAS

```powershell
faas-cli template pull https://github.com/badgerati/pode-openfaas
faas-cli new --lang powershell-pode <func-name>

# build
faas-cli build -f <func-name>.yml
docker run -p 8080:8080 <func-name>:latest

# up
faas-cli up -f <func-name>.yml
```

Request:

```powershell
Invoke-RestMethod -Method GET -Uri http://localhost:8080/function/<func-name>
```

The function created by the template has the server set up for you. The `handler.ps1` created is where you can place your Route/Middleware logic.
