
module App.Update exposing (update)

import App.Model exposing (Model)

import Types.Msg exposing (Msg(..))

update : Msg -> Model -> Model
update msg model =
  case msg of 
    Change newValue -> 
      {model | text = String.reverse newValue}

    Other _ -> 
      model