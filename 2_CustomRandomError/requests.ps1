# responses will be chosen from the error responInvoke-WebRequest -Uri "https://jsonplaceholder.typicode.com/users/1" -Method Getse that is configured for the /users endpoint
Clear-Host
Invoke-WebRequest -Uri "https://jsonplaceholder.typicode.com/users/1" -Method Get -SkipHttpErrorCheck


# responses will be chosen from the error response that is configured for the /todos endpoint
Clear-Host
Invoke-WebRequest -Uri "https://jsonplaceholder.typicode.com/todos/1" -Method Get -SkipHttpErrorCheck
