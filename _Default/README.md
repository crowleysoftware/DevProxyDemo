# Default Configuration

This example demonstrates how Dev Proxy works if you simply start it up without any custom configuration.

All other examples will have a custom devproxyrc.json file but this example just uses the default configuration that is installed at C:\Users\<your user>\AppData\Local\Programs\Dev Proxy

The default config gives you retry and generic errors. It only intercepts requests for `https://jsonplaceholder.typicode.com/*`

## Steps:
1. Run `devproxy` at the command prompt from any folder that does not already contain a devproxyrc.json file.
1. Make requests to jsonplacehoder, for example: https://jsonplaceholder.typicode.com/posts/1
1. Observe the random errors and successes as you repeat the request.

