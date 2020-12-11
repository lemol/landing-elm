module Main exposing (..)

import Ant.Icon as Icon
import Ant.Icons as Icons
import Element exposing (..)
import Element.Font as Font
import Html exposing (Html)


main : Html msg
main =
    layout [ width fill, height fill ] view


view : Element msg
view =
    column
        [ height fill
        , width fill
        , spacing 4
        ]
        [ el
            [ centerX
            , centerY
            , Font.size 34
            , Font.bold
            ]
            (text "Leza Morais Lutonda")
        , el
            [ centerX
            , centerY
            , Font.size 24
            ]
            (text "Software Engineer")
        , row
            [ centerX
            , centerY
            , spacing 8
            , padding 16
            ]
            [ newTabLink [ mouseOver [ Font.color <| rgb 0 0 1 ] ]
                { url = "https://www.linkedin.com/in/leza-lutonda"
                , label = Icons.linkedinOutlined [ Icon.width 24 ]
                }
            , newTabLink [ mouseOver [ Font.color <| rgb 0 0 1 ] ]
                { url = "mailto://lemol@lemol.ao"
                , label = Icons.mailOutlined [ Icon.width 24 ]
                }
            , newTabLink [ mouseOver [ Font.color <| rgb 0 0 1 ] ]
                { url = "https://github.com/lemol"
                , label = Icons.githubOutlined [ Icon.width 24 ]
                }
            ]
        ]
