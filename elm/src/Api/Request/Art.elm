{-
   API League
   API League is a Hub for World Class APIs.

   The version of the OpenAPI document: 1.3.0
   Contact: mail@apileague.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git

   DO NOT EDIT THIS FILE MANUALLY.

   For more info on generating Elm code, see https://eriktim.github.io/openapi-elm/
-}


module Api.Request.Art exposing
    ( imageToAsciiArtByURL
    , randomPoem
    )

import Api
import Api.Data exposing (..)
import Dict
import Http
import Json.Decode
import Json.Encode

{-| Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
-}
imageToAsciiArtByURL : String -> Maybe Int -> Maybe Int -> Api.Request String
imageToAsciiArtByURL url_query width_query height_query =
    Api.request
        "GET"
        "/convert-image-to-ascii-txt"
        []
        [ ( "url", Just <| identity url_query ), ( "width", Maybe.map String.fromInt width_query ), ( "height", Maybe.map String.fromInt height_query ) ]
        []
        Nothing
        Json.Decode.string


{-| Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).
-}
randomPoem : Maybe Int -> Maybe Int -> Api.Request Api.Data.RandomPoem200Response
randomPoem minLines_query maxLines_query =
    Api.request
        "GET"
        "/retrieve-random-poem"
        []
        [ ( "min-lines", Maybe.map String.fromInt minLines_query ), ( "max-lines", Maybe.map String.fromInt maxLines_query ) ]
        []
        Nothing
        Api.Data.randomPoem200ResponseDecoder

