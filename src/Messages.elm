module Messages exposing (..)

import Time exposing (Time)


type Msg
    = Left String
    | Right String
    | Tick Time
