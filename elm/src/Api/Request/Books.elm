{-
   API League
   API League is a Hub for World Class APIs.

   The version of the OpenAPI document: 1.0.0
   Contact: mail@apileague.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git

   DO NOT EDIT THIS FILE MANUALLY.

   For more info on generating Elm code, see https://eriktim.github.io/openapi-elm/
-}


module Api.Request.Books exposing
    ( findSimilarBooks
    , searchBooks
    )

import Api
import Api.Data exposing (..)
import Dict
import Http
import Json.Decode
import Json.Encode

{-| Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
-}
findSimilarBooks : Int -> Maybe Int -> Api.Request Api.Data.FindSimilarBooks200Response
findSimilarBooks id_path number_query =
    Api.request
        "GET"
        "/list-similar-books"
        [ ( "id", String.fromInt id_path ) ]
        [ ( "number", Maybe.map String.fromInt number_query ) ]
        []
        Nothing
        Api.Data.findSimilarBooks200ResponseDecoder


{-| Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
-}
searchBooks : Maybe String -> Maybe Int -> Maybe Int -> Maybe Float -> Maybe Float -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe Int -> Maybe Int -> Api.Request Api.Data.SearchBooks200Response
searchBooks query_query earliestPublishYear_query latestPublishYear_query minRating_query maxRating_query genres_query authors_query isbn_query oclc_query sort_query sortDirection_query groupResults_query offset_query number_query =
    Api.request
        "GET"
        "/search-books"
        []
        [ ( "query", Maybe.map identity query_query ), ( "earliest-publish-year", Maybe.map String.fromInt earliestPublishYear_query ), ( "latest-publish-year", Maybe.map String.fromInt latestPublishYear_query ), ( "min-rating", Maybe.map String.fromFloat minRating_query ), ( "max-rating", Maybe.map String.fromFloat maxRating_query ), ( "genres", Maybe.map identity genres_query ), ( "authors", Maybe.map identity authors_query ), ( "isbn", Maybe.map identity isbn_query ), ( "oclc", Maybe.map identity oclc_query ), ( "sort", Maybe.map identity sort_query ), ( "sort-direction", Maybe.map identity sortDirection_query ), ( "group-results", Maybe.map (\val -> if val then "true" else "false") groupResults_query ), ( "offset", Maybe.map String.fromInt offset_query ), ( "number", Maybe.map String.fromInt number_query ) ]
        []
        Nothing
        Api.Data.searchBooks200ResponseDecoder

