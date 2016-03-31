# ocaml-cordova-plugin-touch-id

Binding to
[cordova-plugin-touch-id](https://github.com/apache/cordova-plugin-touchid)

[Example
application](https://github.com/dannywillems/ocaml-cordova-plugin-touchid-example).

## What does cordova-plugin-touch-id do ?

```
Cordova Plugin to leverage the iOS local authentication framework to allow
in-app user authentication using Touch ID.
```

Source: [cordova-plugin-touchid](https://github.com/leecrossley/cordova-plugin-touchid)

## How to use ?

See the official documentation
[cordova-plugin-touchid](https://github.com/leecrossley/cordova-plugin-touchid)

## ! BE CAREFUL !

The device plugin creates a new object called *touchid*, but the object is
available when the *deviceready* event is handled.

We don't provide a *touchid* variable in this plugin (as said in the official
documentation on js_of_ocaml). If we did, *touchid* will be set to **undefined**
because the *touchid* object doesn't exist when we create the variable.

Instead, we provide a function *Touchid.touchid* of type unit -> Touchid.touchid
Js.t which does the binding when you call it.
So, use

```OCaml
let on_device_ready _ =
  let a = Touchid.touchid () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```
