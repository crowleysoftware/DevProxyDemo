Clear-Host
$headers=@{}
Invoke-WebRequest -Uri 'https://apod.nasa.gov/apod/' -Method GET -Headers $headers