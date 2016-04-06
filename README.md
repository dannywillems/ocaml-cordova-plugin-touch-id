# ocaml-cordova-plugin-touch-id

* gen_js_api (master branch): [![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-touch-id.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-touch-id)

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

## Repository branches and tags

We are migrating bindings from
[js_of_ocaml](https://github.com/ocsigen/js_of_ocaml) (low level bindings) to
[gen_js_api](https://github.com/lexifi/gen_js_api) (high level bindings).

The gen_js_api binding allows to use *pure* ocaml types (you don't have to use
the ## syntax from js_of_ocaml or Js.string type but only # and string type).

The js_of_ocaml version is available in the branch
[*js_of_ocaml*](https://github.com/dannywillems/ocaml-cordova-plugin-touchid/tree/js_of_ocaml)
but we **recommend** to use the gen_js_api version which is the master branch.

## How to use ?

See the official documentation
[cordova-plugin-touchid](https://github.com/leecrossley/cordova-plugin-touchid)

## ! BE CAREFUL !

The device plugin creates a new object called *touchid*, but the object is
available when the *deviceready* event is handled.

We provide a function *Touchid.t* of type unit -> Touchid.touchid
which does the binding when you call it.
So, use

```OCaml
let on_device_ready _ =
  let t = Touchid.t () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```
