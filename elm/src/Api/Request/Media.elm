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


module Api.Request.Media exposing
    ( detectMainImageColorAPI
    , rescaleImageAPI
    , searchIconsAPI
    , searchRoyaltyFreeImagesAPI
    , vectorSearchAPI
    )

import Api
import Api.Data exposing (..)
import Dict
import Http
import Json.Decode
import Json.Encode
import File exposing (File)

{-| Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
-}
detectMainImageColorAPI : String -> Api.Request (List Api.Data.DetectMainImageColorAPI200ResponseInner)
detectMainImageColorAPI url_query =
    Api.request
        "GET"
        "/detect-color"
        []
        [ ( "url", Just <| identity url_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.detectMainImageColorAPI200ResponseInnerDecoder)


{-| Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
-}
rescaleImageAPI : String -> Int -> Int -> Bool -> Api.Request File
rescaleImageAPI url_query width_query height_query crop_query =
    Api.request
        "GET"
        "/rescale-image"
        []
        [ ( "url", Just <| identity url_query ), ( "width", Just <| String.fromInt width_query ), ( "height", Just <| String.fromInt height_query ), ( "crop", Just <| (\val -> if val then "true" else "false") crop_query ) ]
        []
        Nothing
        File.decoder


{-| Search through millions of icons to match any topic you want.
-}
searchIconsAPI : String -> Maybe Bool -> Maybe Int -> Api.Request Api.Data.SearchIconsAPI200Response
searchIconsAPI query_query onlyPublicDomain_query number_query =
    Api.request
        "GET"
        "/search-icons"
        []
        [ ( "query", Just <| identity query_query ), ( "only-public-domain", Maybe.map (\val -> if val then "true" else "false") onlyPublicDomain_query ), ( "number", Maybe.map String.fromInt number_query ) ]
        []
        Nothing
        Api.Data.searchIconsAPI200ResponseDecoder


{-| Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
-}
searchRoyaltyFreeImagesAPI : String -> Maybe Int -> Api.Request Api.Data.SearchRoyaltyFreeImagesAPI200Response
searchRoyaltyFreeImagesAPI query_query number_query =
    Api.request
        "GET"
        "/search-images"
        []
        [ ( "query", Just <| identity query_query ), ( "number", Maybe.map String.fromInt number_query ) ]
        []
        Nothing
        Api.Data.searchRoyaltyFreeImagesAPI200ResponseDecoder


{-| Search through over 700,000 free to use vector icons. The license is either \"PUBLIC_DOMAIN\" or \"ATTRIBUTION\". If it is \"ATTRIBUTION\" just attribute the author somewhere in your project.
-}
vectorSearchAPI : String -> Maybe Int -> Maybe Int -> Api.Request Api.Data.VectorSearchAPI200Response
vectorSearchAPI query_query offset_query number_query =
    Api.request
        "GET"
        "/search-vectors"
        []
        [ ( "query", Just <| identity query_query ), ( "offset", Maybe.map String.fromInt offset_query ), ( "number", Maybe.map String.fromInt number_query ) ]
        []
        Nothing
        Api.Data.vectorSearchAPI200ResponseDecoder

