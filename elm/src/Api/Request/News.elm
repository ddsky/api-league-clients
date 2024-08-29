{-
   API League
   API League is a Hub for World Class APIs.

   The version of the OpenAPI document: 1.6.2
   Contact: mail@apileague.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git

   DO NOT EDIT THIS FILE MANUALLY.

   For more info on generating Elm code, see https://eriktim.github.io/openapi-elm/
-}


module Api.Request.News exposing
    ( extractNews
    , searchNews
    , topNews
    )

import Api
import Api.Data exposing (..)
import Dict
import Http
import Json.Decode
import Json.Encode

{-| Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
-}
extractNews : String -> Bool -> Api.Request Api.Data.ExtractNews200Response
extractNews url_query analyze_query =
    Api.request
        "GET"
        "/extract-news"
        []
        [ ( "url", Just <| identity url_query ), ( "analyze", Just <| (\val -> if val then "true" else "false") analyze_query ) ]
        []
        Nothing
        Api.Data.extractNews200ResponseDecoder


{-| Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
-}
searchNews : Maybe String -> Maybe String -> Maybe String -> Maybe Float -> Maybe Float -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe Int -> Maybe Int -> Api.Request Api.Data.SearchNews200Response
searchNews text_query sourceCountries_query language_query minSentiment_query maxSentiment_query earliestPublishDate_query latestPublishDate_query newsSources_query authors_query categories_query entities_query locationFilter_query sort_query sortDirection_query offset_query number_query =
    Api.request
        "GET"
        "/search-news"
        []
        [ ( "text", Maybe.map identity text_query ), ( "source-countries", Maybe.map identity sourceCountries_query ), ( "language", Maybe.map identity language_query ), ( "min-sentiment", Maybe.map String.fromFloat minSentiment_query ), ( "max-sentiment", Maybe.map String.fromFloat maxSentiment_query ), ( "earliest-publish-date", Maybe.map identity earliestPublishDate_query ), ( "latest-publish-date", Maybe.map identity latestPublishDate_query ), ( "news-sources", Maybe.map identity newsSources_query ), ( "authors", Maybe.map identity authors_query ), ( "categories", Maybe.map identity categories_query ), ( "entities", Maybe.map identity entities_query ), ( "location-filter", Maybe.map identity locationFilter_query ), ( "sort", Maybe.map identity sort_query ), ( "sort-direction", Maybe.map identity sortDirection_query ), ( "offset", Maybe.map String.fromInt offset_query ), ( "number", Maybe.map String.fromInt number_query ) ]
        []
        Nothing
        Api.Data.searchNews200ResponseDecoder


{-| Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
-}
topNews : String -> String -> Maybe String -> Maybe Bool -> Api.Request Api.Data.TopNews200Response
topNews sourceCountry_query language_query date_query headlinesOnly_query =
    Api.request
        "GET"
        "/retrieve-top-news"
        []
        [ ( "source-country", Just <| identity sourceCountry_query ), ( "language", Just <| identity language_query ), ( "date", Maybe.map identity date_query ), ( "headlines-only", Maybe.map (\val -> if val then "true" else "false") headlinesOnly_query ) ]
        []
        Nothing
        Api.Data.topNews200ResponseDecoder

