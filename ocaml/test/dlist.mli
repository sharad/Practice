
open Core.Std

type 'a t

type 'a element

(** Basic list operations *)

val create : unit -> 'a t
val is_empty : 'a t -> bool


(** Navigation using elements *)

val first : 'a t -> 'a element option
val next : 'a t -> 'a element option
val prev : 'a t => 'a element option
val value : 'a element -> 'a

(** Whole datastructure iteration *)

val iter : 'a t -> f:('a -> unit) -> unit
val find_el : 'a t ->  f:('a -> bool) -> 'a element option

(** Mutation *)

val insert_first : 'a t -> 'a -> 'a element
val insert_after : 'a element -> 'a -> 'a element
val remove : 'a t -> 'a element -> unit





