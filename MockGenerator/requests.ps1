
$APIKEY = $env:NASA_API_KEY

Invoke-RestMethod -Uri "https://api.nasa.gov/planetary/apod?api_key=$APIKEY"

Invoke-WebRequest -Uri "https://apod.nasa.gov/apod/image/2503/iss072e574593_DonPetit2048.jpg" -Method Get