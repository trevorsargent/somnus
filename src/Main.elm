module Main exposing (main)

import Browser
import Html exposing (Html, div, input)
import Html.Attributes exposing (value, placeholder)
import Html.Events exposing (onInput)


type alias Model = 
  { value: Float
  , text: String
  }
init: Model
init = 
  { value = 0.0
  , text = "Hello, World"
  }

main: Program () Model Msg
main =
  Browser.sandbox { init = init, update = update, view = view }

type Msg 
  = Change String 


update : Msg -> Model -> Model
update msg model =
  case msg of 
    Change newValue -> 
      {model | text = String.reverse newValue}


view: Model -> Html Msg 
view model =
  div []
    [ 
      console model.text "Start Here"
    ]
    
console : String -> String ->  Html Msg
console v p  =
  input[ value v, placeholder p, onInput Change ][]