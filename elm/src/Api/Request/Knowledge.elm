{-
   API League
   API League is a Hub for World Class APIs.

   The version of the OpenAPI document: 1.0
   Contact: mail@apileague.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git

   DO NOT EDIT THIS FILE MANUALLY.

   For more info on generating Elm code, see https://eriktim.github.io/openapi-elm/
-}


module Api.Request.Knowledge exposing
    ( randomQuote
    , randomTrivia
    )

import Api
import Api.Data exposing (..)
import Dict
import Http
import Json.Decode
import Json.Encode

{-| This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
-}
randomQuote : Maybe Int -> Maybe Int -> Api.Request Api.Data.RandomQuote200Response
randomQuote minLength_query maxLength_query =
    Api.request
        "GET"
        "/retrieve-random-quote"
        []
        [ ( "min-length", Maybe.map String.fromInt minLength_query ), ( "max-length", Maybe.map String.fromInt maxLength_query ) ]
        []
        Nothing
        Api.Data.randomQuote200ResponseDecoder


{-| This endpoint returns a random piece of trivia.
-}
randomTrivia : Maybe Int -> Api.Request Api.Data.RandomTrivia200Response
randomTrivia maxLength_query =
    Api.request
        "GET"
        "/retrieve-random-trivia"
        []
        [ ( "max-length", Maybe.map String.fromInt maxLength_query ) ]
        []
        Nothing
        Api.Data.randomTrivia200ResponseDecoder
