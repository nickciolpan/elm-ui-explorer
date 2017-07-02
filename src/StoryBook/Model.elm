module StoryBook.Model exposing (..)

import Html exposing (Html)


type alias Story msg =
    { id : String
    , description : String
    , view : Maybe String -> Html msg
    }


type alias Stories msg =
    List (Story msg)


type alias Model msg =
    { stories : Stories msg
    , selectedStoryId : Maybe String
    , selectedStateId : Maybe String
    }