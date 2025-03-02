. ../helpers.ps1

$Response = Invoke-WebRequest -Uri "https://jsonplaceholder.typicode.com/posts" -Method Get -SkipHttpErrorCheck

Format-Response $Response



