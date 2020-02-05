module App.View exposing (view)

-- App Lifecycle
import App.Model exposing (Model)

-- Types
import Types.Msg exposing (Msg(..))

-- Html
import Html exposing (Html, div)

-- Components
import Components.Console exposing (console)

view: Model -> Html Msg 
view model =
  div []
    [ 
      console model.text "Start Here"
    ]