{-
   API League
   API League is a Hub for World Class APIs.

   The version of the OpenAPI document: 1.6.4
   Contact: mail@apileague.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git

   DO NOT EDIT THIS FILE MANUALLY.

   For more info on generating Elm code, see https://eriktim.github.io/openapi-elm/
-}


module Api.Request.Math exposing
    ( convertUnitsAPI
    )

import Api
import Api.Data exposing (..)
import Dict
import Http
import Json.Decode
import Json.Encode

{-| Convert units from one to another. The API returns the amount and the unit of the target unit.
-}
convertUnitsAPI : Float -> String -> String -> Maybe String -> Api.Request Api.Data.ConvertUnitsAPI200Response
convertUnitsAPI sourceAmount_query sourceUnit_query targetUnit_query foodName_query =
    Api.request
        "GET"
        "/convert-units"
        []
        [ ( "source-amount", Just <| String.fromFloat sourceAmount_query ), ( "source-unit", Just <| identity sourceUnit_query ), ( "target-unit", Just <| identity targetUnit_query ), ( "food-name", Maybe.map identity foodName_query ) ]
        []
        Nothing
        Api.Data.convertUnitsAPI200ResponseDecoder

