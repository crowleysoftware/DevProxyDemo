## To generate a mock response file :

1. run `devproxy`
1. start recording (press "r" in the terminal)
1. execute the requests you want to generate mocks for
1. stop recording (press "s" in the terminal)

Once recording stops a json file will be created in the current working folder.

 Use that file as the value for `mockFile` when configuring [the mockRequestPlugin](../Mock/devproxyrc.json).