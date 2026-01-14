$headers=@{}
$headers.Add("Authorization", "Bearer YouDontNeedAKeyIfYouHitLocalClient")
$headers.Add("Content-Type", "application/json")
$headers.Add("User-Agent", "insomnia/12.2.0")
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$cookie = New-Object System.Net.Cookie
$cookie.Name = '__cf_bm'
$cookie.Value = 'vcXDFXsBaWt.6s1GWuiz9cqrMZzlnQf4Z174Fr0dYiM-1766760914-1.0.1.1-DAfx27DP_Wv_LeowhHHT44PFiXZXRPqQcP5sFwXW0casPi3uEfQoCNF4PsOTUpLMO0eD1dQURIwkRqfBh.xKe0FhKKkr93ta4uFTMMV5jrI'
$cookie.Domain = 'api.openai.com'
$session.Cookies.Add($cookie)
$cookie = New-Object System.Net.Cookie
$cookie.Name = '_cfuvid'
$cookie.Value = '1dt0gLeD5BsT7HxR9xxAAbohcaM9MFYyO6ZKynvh0IE-1766759566343-0.0.1.1-604800000'
$cookie.Domain = 'api.openai.com'
$session.Cookies.Add($cookie)
Invoke-WebRequest -Uri 'https://api.openai.com/v1/chat/completions' -Method POST -Headers $headers -WebSession $session -ContentType 'application/json' -Body '{
    "model": "mistral",
    "prompt": "Is PLA food safe?",
	  "max_tokens": 250,
	  "temperature": 0
 }'