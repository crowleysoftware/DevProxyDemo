# Custom Plugin

This sample demonstrates using a custom-built plugin. The project that implements this plugin is in the CustomPlugin folder of this repository.

The .NET project that implements the plugin has an after-build step that copies the built DLL into the `$(LOCALAPPDATA)\Programs\Dev Proxy\plugins` folder which is where DevProxy is installed on Windows. This allows you to use the following configuration without manual copying of the dll:

```json
{
    "$schema": "https://raw.githubusercontent.com/dotnet/dev-proxy/main/schemas/v2.0.0/rc.schema.json",
    "plugins": [
        {
            "name": "QotdHeader",
            "enabled": true,
            "pluginPath": "~appFolder/plugins/QuoteOfTheDayPlugin.dll"
        }
    ],
    "urlsToWatch": [
        "https://jsonplaceholder.typicode.com/*"
    ]
}
```
If your system does not have the plugin dll in that folder, you can specify the full path to the dll in the `pluginPath` property.

When using this plugin, all responses will contain a special header with a famous quote. e.g.:

> "X-Quote-Of-The-Day": [
      "Keep your face always toward the sunshine-and shadows will fall behind you."
    ]

This is a contrived example, but it shows how you can build your own plugins to extend DevProxy's functionality.