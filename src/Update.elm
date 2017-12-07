module Update exposing (..)

import Models exposing (Model, Scene(..))
import Messages exposing (..)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NextGame ->
            ( { model | scene = NowPlaying }, Cmd.none )

        SelectYourHand h ->
            ( { model | you = h, scene = Over }, Cmd.none )
