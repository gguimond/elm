module Messages exposing (..)

import Navigation exposing (Location)
import Players.Messages

-- MESSAGES


type Msg
    = PlayersMsg Players.Messages.Msg
    | OnLocationChange Location