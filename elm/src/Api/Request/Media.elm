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


module Api.Request.Media exposing
    ( detectMainImageColor
    , rescaleImage
    , searchRoyaltyFreeImages
    )

import Api
import Api.Data exposing (..)
import Dict
import Http
import Json.Decode
import Json.Encode

{-| Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
-}
detectMainImageColor : String -> Api.Request (List Api.Data.DetectMainImageColor200ResponseInner)
detectMainImageColor url_query =
    Api.request
        "GET"
        "/detect-color"
        []
        [ ( "url", Just <| identity url_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.detectMainImageColor200ResponseInnerDecoder)


{-| Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
-}
rescaleImage : String -> Int -> Int -> Bool -> Api.Request (Dict.Dict String Api.Data.Object)
rescaleImage url_query width_query height_query crop_query =
    Api.request
        "GET"
        "/rescale-image"
        []
        [ ( "url", Just <| identity url_query ), ( "width", Just <| String.fromInt width_query ), ( "height", Just <| String.fromInt height_query ), ( "crop", Just <| (\val -> if val then "true" else "false") crop_query ) ]
        []
        Nothing
        (Json.Decode.dict )


{-| Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
-}
searchRoyaltyFreeImages : String -> Maybe Int -> Api.Request Api.Data.SearchRoyaltyFreeImages200Response
searchRoyaltyFreeImages query_query number_query =
    Api.request
        "GET"
        "/search-images"
        []
        [ ( "query", Just <| identity query_query ), ( "number", Maybe.map String.fromInt number_query ) ]
        []
        Nothing
        Api.Data.searchRoyaltyFreeImages200ResponseDecoder

