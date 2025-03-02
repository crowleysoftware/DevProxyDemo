$APIKEY = $env:NASA_API_KEY

$APOD_Response = Invoke-RestMethod -Uri "https://api.nasa.gov/planetary/apod?api_key=$APIKEY"

$APOD_Response