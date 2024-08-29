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


module Api.Request.Web exposing
    ( extractAuthors
    , extractContentFromAWebPage
    , extractPublishDate
    , retrievePageRank
    , searchWeb
    , verifyEmailAddress
    )

import Api
import Api.Data exposing (..)
import Dict
import Http
import Json.Decode
import Json.Encode

{-| Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
-}
extractAuthors : String -> Api.Request Api.Data.ExtractAuthors200Response
extractAuthors url_query =
    Api.request
        "GET"
        "/extract-authors"
        []
        [ ( "url", Just <| identity url_query ) ]
        []
        Nothing
        Api.Data.extractAuthors200ResponseDecoder


{-| Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
-}
extractContentFromAWebPage : String -> Api.Request Api.Data.ExtractContentFromAWebPage200Response
extractContentFromAWebPage url_query =
    Api.request
        "GET"
        "/extract-content"
        []
        [ ( "url", Just <| identity url_query ) ]
        []
        Nothing
        Api.Data.extractContentFromAWebPage200ResponseDecoder


{-| Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
-}
extractPublishDate : String -> Api.Request Api.Data.ExtractPublishDate200Response
extractPublishDate url_query =
    Api.request
        "GET"
        "/extract-publish-date"
        []
        [ ( "url", Just <| identity url_query ) ]
        []
        Nothing
        Api.Data.extractPublishDate200ResponseDecoder


{-| This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
-}
retrievePageRank : String -> Api.Request Api.Data.RetrievePageRank200Response
retrievePageRank domain_query =
    Api.request
        "GET"
        "/retrieve-page-rank"
        []
        [ ( "domain", Just <| identity domain_query ) ]
        []
        Nothing
        Api.Data.retrievePageRank200ResponseDecoder


{-| Search the web for a given query. The API returns a list of results with the title, summary, and URL.
-}
searchWeb : String -> Maybe Int -> Api.Request Api.Data.SearchWeb200Response
searchWeb query_query number_query =
    Api.request
        "GET"
        "/search-web"
        []
        [ ( "query", Just <| identity query_query ), ( "number", Maybe.map String.fromInt number_query ) ]
        []
        Nothing
        Api.Data.searchWeb200ResponseDecoder


{-| This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
-}
verifyEmailAddress : String -> Api.Request Api.Data.VerifyEmailAddress200Response
verifyEmailAddress email_query =
    Api.request
        "GET"
        "/verify-email"
        []
        [ ( "email", Just <| identity email_query ) ]
        []
        Nothing
        Api.Data.verifyEmailAddress200ResponseDecoder

