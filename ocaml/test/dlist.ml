
open Core.Std


type 'a element =
  { value : 'a;
    mutable next : 'a element option;
    mutable prev : 'a element option
  }

type 'a t = 'a element option ref

let create () = ref None
let is_empty t = !t = None

let value elt = elt.value

let first t = !t
let next elt = elt.next
let prev elt = elt.prev


