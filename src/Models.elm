module Models exposing (..)

import Rps exposing (..)


type Scene
    = Start
    | NowPlaying
    | Over


type alias Model =
    { you : Hand, enemy : Hand, scene : Scene }


initialModel : Model
initialModel =
    { you = Rock, enemy = Rock, scene = Start }
