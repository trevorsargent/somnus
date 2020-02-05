module Components.Console exposing (console)

import Html exposing (Html, input)
import Html.Attributes exposing (value, placeholder)
import Html.Events exposing (onInput)
import Types.Msg exposing (Msg(..))

console : String -> String ->  Html Msg
console v p  =
  input[ value v, placeholder p, onInput Change ][]