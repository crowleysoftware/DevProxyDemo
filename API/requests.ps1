$baseDevProxyApiUrl = "http://localhost:8897"

# Get info on your currently running proxy
Invoke-WebRequest -Uri "$baseDevProxyApiUrl/proxy" -Method Get

# Start recording
$postBody = @{
    "recording" = $true
}
Invoke-WebRequest -Uri "$baseDevProxyApiUrl/proxy" -Method Post -Body ($postBody | ConvertTo-Json) -ContentType "application/json"

# raise mock request
Invoke-WebRequest -Uri "$baseDevProxyApiUrl/proxy/raisemockrequest" -Method Post

# stop proxy
Invoke-WebRequest -Uri "$baseDevProxyApiUrl/proxy/stopproxy" -Method Post

# generate jwt
$jwtbody = @{
    "name" = "Dev Proxy"
    "audiences" = ,"https://api.example.com"
    "issuers" = "https://dev-proxy.example.com"
    "roles" = ,"admin"
    "scopes" = "Post.Read", "Post.Write"
    "claims" = @{
        claim1 = "foo"
        claim2 = "bar"
    }
    "validFor" = "1"
}

$response = Invoke-WebRequest -Uri "$baseDevProxyApiUrl/proxy/createJwtToken" `
    -Method Post `
    -ContentType "application/json" `
    -Body ($jwtbody | ConvertTo-Json)

$response.RawContent