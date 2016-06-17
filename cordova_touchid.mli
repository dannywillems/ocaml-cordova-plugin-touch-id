(* -------------------------------------------------------------------------- *)
val authenticate :
  (unit -> unit)    -> (* success_cb *)
  (unit -> unit)    -> (* error_cb if authentication fails *)
  string            -> (* text explaining why the application needs access *)
  unit
[@@js.global "touchid.authenticate"]

val check_support :
  (unit -> unit)    -> (* success_cb *)
  (string -> unit)  -> (* error_cb *)
  unit
[@@js.global "touchid.checkSupport"]
(* -------------------------------------------------------------------------- *)
