# clear the terminal
Clear-Host
Invoke-WebRequest -Uri "https://jsonplaceholder.typicode.com/posts" -Method Get -SkipHttpErrorCheck
