
# responses will be chosen from the error response that is configured for the /users endpoint
Invoke-WebRequest -Uri "https://jsonplaceholder.typicode.com/users/1" -Method Get -SkipHttpErrorCheck
$c1 = Invoke-WebRequest -Uri "https://jsonplaceholder.typicode.com/users/1" -Method Get -SkipHttpErrorCheck
Write-Output $c1.Content

# responses will be chosen from the error response that is configured for the /todos endpoint
$c = Invoke-WebRequest -Uri "https://jsonplaceholder.typicode.com/todos/1" -Method Get -SkipHttpErrorCheck

Write-Output $c.Content
    