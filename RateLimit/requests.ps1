$url = "https://jsonplaceholder.typicode.com/posts/1"
$iterations = 20

for ($i = 1; $i -le $iterations; $i++) {
    $response = Invoke-WebRequest -Uri $url -Method Get
    Write-Output "Response $($i): $response"
    Start-Sleep -Seconds .5
}