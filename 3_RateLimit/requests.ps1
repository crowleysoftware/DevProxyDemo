Clear-Host

$url = "https://jsonplaceholder.typicode.com/posts/1"
$iterations = 20

for ($i = 1; $i -le $iterations; $i++) {

#write block to identify iteration
    Write-Output "`n--- Request #$i ---"

    $response = Invoke-WebRequest -Uri $url -Method Get
    foreach ($kv in $response.Headers.GetEnumerator()) {
        $values = @($kv.Value)
        foreach ($v in $values) {
            Write-Output "Response $($i): $($kv.Key): $v"
        }
    }
    Start-Sleep -Seconds .5
}