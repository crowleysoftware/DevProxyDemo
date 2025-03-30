$Response = Invoke-WebRequest -Uri "https://jsonplaceholder.typicode.com/posts" -Method Get -SkipHttpErrorCheck

$Response