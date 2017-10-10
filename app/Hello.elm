module Hello exposing (..)

import Html exposing (text)

add1 : Int -> Int
add1 x =
    x + 1

display : Int -> String
display x =
    toString (add1 x)

divide : Float -> Float -> Float
divide x y =
    x / y

displayGeneric : a -> String
displayGeneric x =
    toString x

map : (Int -> String) -> Int -> String
map f l = 
    f l

{-type Answer = Yes | No | Other String-}
type Imbrication = Test | Answer

type Answer2 a = Yes | No | Other a


respond : Answer2 Int -> String
respond answer =
    toString answer

type alias PlayerName = String

type alias Player =
    { id : Int
    , name : String
    }

readMessage : Answer2 () -> String
readMessage answer2 =
    "yep"

main =
    {-text (display 3)-}
    {-text (toString((divide 5 2)))-}
    
    {-2
    |> divide 5
    |> toString
    |>text-}

    {-4
    |> displayGeneric
    |> text-}

    {-text (map toString 1)-}

    text (respond (Other 2))