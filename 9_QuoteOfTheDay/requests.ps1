Clear-Host


$response = Invoke-WebRequest -Uri "https://jsonplaceholder.typicode.com/users/1" -Method Get
$response.Headers