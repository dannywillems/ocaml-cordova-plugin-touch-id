# ocaml-cordova-plugin-touchid

[![LGPL-v3 licensed](https://img.shields.io/badge/license-LGPLv3-blue.svg)](https://raw.githubusercontent.com/dannywillems/ocaml-cordova-plugin-touchid/master/LICENSE)
[![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-touchid.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-touchid)

Binding to
[cordova-plugin-touchid](https://github.com/apache/cordova-plugin-touchid)

[Example
application](https://github.com/dannywillems/ocaml-cordova-plugin-touchid-example).

## What does cordova-plugin-touchid do ?

```
Cordova Plugin to leverage the iOS local authentication framework to allow
in-app user authentication using Touch ID.
```

Source: [cordova-plugin-touchid](https://github.com/leecrossley/cordova-plugin-touchid)

## How to install and compile your project by using this plugin ?

Don't forget to switch to a compiler **>= 4.03.0**.
```Shell
opam switch 4.03.0
```

You can use opam by pinning the repository with
```Shell
opam pin add cordova-plugin-touchid https://github.com/dannywillems/ocaml-cordova-plugin-touchid.git
```

and to compile your project, use
```Shell
ocamlfind ocamlc -c -o [output_file] -package gen_js_api -package cordova-plugin-touchid [...] -linkpkg [other arguments]
```

Don't forget to install the cordova plugin touchid with
```Shell
cordova plugin add cordova-plugin-touchid
```

## How to use ?

See the official documentation
[cordova-plugin-touchid](https://github.com/leecrossley/cordova-plugin-touchid)
