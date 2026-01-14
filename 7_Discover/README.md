
### Discovers URLs that your app is calling so you know what to use for urlsToWatch configuration

The devproxyrc.json file in this folder is an exact copy of ~appFolder/presets/urls-to-watch.json.

This is for demonstration only, normally to discover urls you don't create your own config file, you just use the already supplied one:

```
devproxy --watch-process-names msedge
```

Replace "msedge" with the name of the process to watch.
When you have finished operating your app to discover URLs, stop proxy with ctrl+c. The plain text reporter will generate a txt file that lists the discovered urls.

