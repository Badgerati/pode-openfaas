Start-PodeServer -Threads 3 -Type Pode -ScriptBlock {
    Add-PodeEndpoint -Address 127.0.0.1 -Port 8082 -Protocol Http
    Use-PodeScript -Path './function/handler.ps1'
}