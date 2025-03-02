Import-Module ..\helpers.psm1

$response = Invoke-WebRequest -Uri "https://jsonplaceholder.typicode.com/users/1" -Method Get
$fmtResponse = Format-Response -Response $response
Write-Host $fmtResponse