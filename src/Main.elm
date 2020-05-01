module Main exposing (main)

import Browser

import Html exposing (Html, div, input, p, text)
import Html.Events exposing (onInput)
import Html.Attributes exposing (placeholder, value)
import List exposing (map)
import Debug exposing (log)
import Keyboard exposing (Key(..))
import Keyboard.Events as Keyboard

type alias Model = 
  { readout: List String
  , text: String
  }
type Msg 
  = Input String
  | Submit 
  | NoOp

init: Model
init = 
  { text = "" 
  , readout = []
  }

update : Msg -> Model -> Model
update msg model =
  case msg of 
    Input newValue -> 
      {model | text = log "new" newValue}
    Submit  -> 
      { model 
      | text = ""
      , readout = log "readout " model.text :: model.readout
      }
    NoOp -> 
      model

subscriptions : Model -> Sub Msg  
subscriptions model =
    Sub.map KeyboardMsg Keyboard.subscriptions

view: Model -> Html Msg 
view model =
  div []
    [ readout model.readout   
    , console model.text "Start Here"
    ]


readout: (List String) -> Html Msg
readout list = 
  div [] (map (\l -> p [] [text l]) list)

console : String -> String ->  Html Msg
console v p  =
  input[ value v, placeholder p, onInput Input ][]

main: Program () Model Msg
main = Browser.sandbox { init = init, update = update, view = view }