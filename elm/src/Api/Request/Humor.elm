{-
   API League
   API League is a Hub for World Class APIs.

   The version of the OpenAPI document: 1.4.1
   Contact: mail@apileague.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git

   DO NOT EDIT THIS FILE MANUALLY.

   For more info on generating Elm code, see https://eriktim.github.io/openapi-elm/
-}


module Api.Request.Humor exposing
    ( generateNonsenseWord
    , randomJoke
    , randomMeme
    , searchGifs
    , searchJokes
    , searchMemes
    )

import Api
import Api.Data exposing (..)
import Dict
import Http
import Json.Decode
import Json.Encode

{-| Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
-}
generateNonsenseWord : Api.Request Api.Data.GenerateNonsenseWord200Response
generateNonsenseWord =
    Api.request
        "GET"
        "/generate-nonsense-word"
        []
        []
        []
        Nothing
        Api.Data.generateNonsenseWord200ResponseDecoder


{-| This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
-}
randomJoke : Maybe String -> Maybe String -> Maybe Float -> Maybe Int -> Api.Request Api.Data.SearchJokes200ResponseJokesInner
randomJoke includeTags_query excludeTags_query minRating_query maxLength_query =
    Api.request
        "GET"
        "/retrieve-random-joke"
        []
        [ ( "include-tags", Maybe.map identity includeTags_query ), ( "exclude-tags", Maybe.map identity excludeTags_query ), ( "min-rating", Maybe.map String.fromFloat minRating_query ), ( "max-length", Maybe.map String.fromInt maxLength_query ) ]
        []
        Nothing
        Api.Data.searchJokes200ResponseJokesInnerDecoder


{-| Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
-}
randomMeme : Maybe String -> Maybe Bool -> Maybe String -> Maybe Float -> Maybe Int -> Api.Request Api.Data.RandomMeme200Response
randomMeme keywords_query keywordsInImage_query mediaType_query minRating_query maxAgeDays_query =
    Api.request
        "GET"
        "/retrieve-random-meme"
        []
        [ ( "keywords", Maybe.map identity keywords_query ), ( "keywords-in-image", Maybe.map (\val -> if val then "true" else "false") keywordsInImage_query ), ( "media-type", Maybe.map identity mediaType_query ), ( "min-rating", Maybe.map String.fromFloat minRating_query ), ( "max-age-days", Maybe.map String.fromInt maxAgeDays_query ) ]
        []
        Nothing
        Api.Data.randomMeme200ResponseDecoder


{-| Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
-}
searchGifs : String -> Maybe Int -> Api.Request Api.Data.SearchGifs200Response
searchGifs query_query number_query =
    Api.request
        "GET"
        "/search-gifs"
        []
        [ ( "query", Just <| identity query_query ), ( "number", Maybe.map String.fromInt number_query ) ]
        []
        Nothing
        Api.Data.searchGifs200ResponseDecoder


{-| With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
-}
searchJokes : Maybe String -> Maybe String -> Maybe String -> Maybe Float -> Maybe Float -> Maybe Int -> Maybe Int -> Api.Request Api.Data.SearchJokes200Response
searchJokes keywords_query includeTags_query excludeTags_query minRating_query maxLength_query offset_query number_query =
    Api.request
        "GET"
        "/search-jokes"
        []
        [ ( "keywords", Maybe.map identity keywords_query ), ( "include-tags", Maybe.map identity includeTags_query ), ( "exclude-tags", Maybe.map identity excludeTags_query ), ( "min-rating", Maybe.map String.fromFloat minRating_query ), ( "max-length", Maybe.map String.fromFloat maxLength_query ), ( "offset", Maybe.map String.fromInt offset_query ), ( "number", Maybe.map String.fromInt number_query ) ]
        []
        Nothing
        Api.Data.searchJokes200ResponseDecoder


{-| With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.
-}
searchMemes : Maybe String -> Maybe Bool -> Maybe String -> Maybe Float -> Maybe Int -> Maybe Int -> Maybe Int -> Api.Request Api.Data.SearchMemes200Response
searchMemes keywords_query keywordsInImage_query mediaType_query minRating_query maxAgeDays_query offset_query number_query =
    Api.request
        "GET"
        "/search-memes"
        []
        [ ( "keywords", Maybe.map identity keywords_query ), ( "keywords-in-image", Maybe.map (\val -> if val then "true" else "false") keywordsInImage_query ), ( "media-type", Maybe.map identity mediaType_query ), ( "min-rating", Maybe.map String.fromFloat minRating_query ), ( "max-age-days", Maybe.map String.fromInt maxAgeDays_query ), ( "offset", Maybe.map String.fromInt offset_query ), ( "number", Maybe.map String.fromInt number_query ) ]
        []
        Nothing
        Api.Data.searchMemes200ResponseDecoder

