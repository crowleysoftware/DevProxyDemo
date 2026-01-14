$APIKEY = $env:NASA_API_KEY
Clear-Host
Invoke-RestMethod -Uri "https://api.nasa.gov/planetary/apod?api_key=$APIKEY"
