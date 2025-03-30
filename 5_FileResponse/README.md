### Respond with contents of file

#### If you are not familiar with mocks yet, see this first - [MockGenerator](../MockGenerator/README.md)

1. Using a browser so you can see the image response, go to any NASA Picture of the Day. For example: https://apod.nasa.gov/apod/image/2503/iss072e574593_DonPetit2048.jpg
1. Now run devproxy from this folder.
1. Refresh the browser to see the mock response return the static image.

The "body" property of mock.json refers to a local file - apod.png. It uses the "@" syntax to direct Dev Proxy to respond with the contents of a file.

`"body": "@apod.png",`