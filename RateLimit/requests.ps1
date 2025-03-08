
try {
    $Response = Invoke-WebRequest -Uri "https://jsonplaceholder.typicode.com/users/1" -Method Get -SkipHttpErrorCheck
    
    # Create a custom object with the response details
    $FormattedResponse = [PSCustomObject]@{
        StatusCode = $Response.StatusCode
        StatusDescription = $Response.StatusDescription
        Headers = $Response.Headers
    }
    
    # Display status code and description
    Write-Host "Status Code: $($FormattedResponse.StatusCode) - $($FormattedResponse.StatusDescription)" -ForegroundColor Cyan
    
    # Display headers
    Write-Host "`nHeaders:" -ForegroundColor Yellow
    $FormattedResponse.Headers.GetEnumerator() | Format-Table Key, Value -AutoSize

} catch {
    Write-Host "Error making request: $_" -ForegroundColor Red
}


