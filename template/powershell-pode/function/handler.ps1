Add-PodeRoute -Method Get -Path '/' -ScriptBlock {
    Write-PodeJsonResponse -Value @{ Message = 'Hello, world!' }
}