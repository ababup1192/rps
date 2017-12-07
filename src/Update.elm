module Update exposing (..)

import Models exposing (Model, Scene(..))
import Messages exposing (..)
import Random
import Rps


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NextGame ->
            ( { model | scene = NowPlaying }, Cmd.none )

        SelectYourHand h ->
            ( { model | you = h }, Random.generate SelectEnemyHand (Random.int 0 2) )

        SelectEnemyHand num ->
            ( { model
                | enemy = Rps.toHand num
                , scene = Over
              }
            , Cmd.none
            )
