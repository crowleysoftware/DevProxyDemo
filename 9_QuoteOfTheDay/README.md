# Custom Plugin

This sample demonstrates using a custom-built plugin. The project that implements this plugin is in the CustomPlugin folder of this repository.

To use this plugin you must build the project and copy the QoTDPlugin.dll into the ~appFolder/plugins/ folder, or, modify the pluginPath accordingly.

When using this plugin, all responses will contain a special header with a famous quote. e.g.:

> "X-Quote-Of-The-Day": [
      "Keep your face always toward the sunshine-and shadows will fall behind you."
    ]