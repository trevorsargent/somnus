module Main exposing (main)

import Browser

import App.View exposing (view)
import App.Update exposing (update)
import App.Init exposing (init)

import App.Model exposing (Model)
import Types.Msg exposing (Msg(..))
main: Program () Model Msg
main = Browser.sandbox { init = init, update = update, view = view }