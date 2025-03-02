
# responses will be chosen from the error response that is configured for the /users endpoint
Invoke-WebRequest -Uri "https://jsonplaceholder.typicode.com/users/1" -Method Get -SkipHttpErrorCheck

# responses will be chosen from the error response that is configured for the /todos endpoint
Invoke-WebRequest -Uri "https://jsonplaceholder.typicode.com/todos/1" -Method Get -SkipHttpErrorCheck
    

