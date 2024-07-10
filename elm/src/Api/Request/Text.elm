{-
   API League
   API League is a Hub for World Class APIs.

   The version of the OpenAPI document: 1.4.0
   Contact: mail@apileague.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git

   DO NOT EDIT THIS FILE MANUALLY.

   For more info on generating Elm code, see https://eriktim.github.io/openapi-elm/
-}


module Api.Request.Text exposing
    ( correctSpelling
    , detectGenderByName
    , detectLanguage
    , detectSentiment
    , extractDates
    , extractEntities
    , listWordSynonyms
    , pluralizeWord
    , scoreReadability
    , scoreText
    , singularizeWord
    , stemText
    , tagPartOfSpeech
    )

import Api
import Api.Data exposing (..)
import Dict
import Http
import Json.Decode
import Json.Encode

{-| The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
-}
correctSpelling : String -> String -> Api.Request Api.Data.CorrectSpelling200Response
correctSpelling text_query language_query =
    Api.request
        "GET"
        "/correct-spelling"
        []
        [ ( "text", Just <| identity text_query ), ( "language", Just <| identity language_query ) ]
        []
        Nothing
        Api.Data.correctSpelling200ResponseDecoder


{-| Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.
-}
detectGenderByName : String -> Api.Request Api.Data.DetectGenderByName200Response
detectGenderByName name_query =
    Api.request
        "GET"
        "/detect-gender"
        []
        [ ( "name", Just <| identity name_query ) ]
        []
        Nothing
        Api.Data.detectGenderByName200ResponseDecoder


{-| Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
-}
detectLanguage : String -> Api.Request (List Api.Data.DetectLanguage200ResponseInner)
detectLanguage text_query =
    Api.request
        "GET"
        "/detect-language"
        []
        [ ( "text", Just <| identity text_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.detectLanguage200ResponseInnerDecoder)


{-| Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
-}
detectSentiment : String -> Api.Request Api.Data.DetectSentiment200Response
detectSentiment text_query =
    Api.request
        "GET"
        "/detect-sentiment"
        []
        [ ( "text", Just <| identity text_query ) ]
        []
        Nothing
        Api.Data.detectSentiment200ResponseDecoder


{-| Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
-}
extractDates : String -> Api.Request Api.Data.ExtractDates200Response
extractDates text_query =
    Api.request
        "GET"
        "/extract-dates"
        []
        [ ( "text", Just <| identity text_query ) ]
        []
        Nothing
        Api.Data.extractDates200ResponseDecoder


{-| Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
-}
extractEntities : String -> Api.Request Api.Data.ExtractEntities200Response
extractEntities text_query =
    Api.request
        "GET"
        "/extract-entities"
        []
        [ ( "text", Just <| identity text_query ) ]
        []
        Nothing
        Api.Data.extractEntities200ResponseDecoder


{-| Return synonyms of a word.
-}
listWordSynonyms : String -> Api.Request Api.Data.ListWordSynonyms200Response
listWordSynonyms word_query =
    Api.request
        "GET"
        "/list-synonyms"
        []
        [ ( "word", Just <| identity word_query ) ]
        []
        Nothing
        Api.Data.listWordSynonyms200ResponseDecoder


{-| Find the plural form of a word.
-}
pluralizeWord : String -> Api.Request Api.Data.PluralizeWord200Response
pluralizeWord word_query =
    Api.request
        "GET"
        "/pluralize-word"
        []
        [ ( "word", Just <| identity word_query ) ]
        []
        Nothing
        Api.Data.pluralizeWord200ResponseDecoder


{-| Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
-}
scoreReadability : String -> Api.Request Api.Data.ScoreReadability200Response
scoreReadability text_query =
    Api.request
        "GET"
        "/score-readability"
        []
        [ ( "text", Just <| identity text_query ) ]
        []
        Nothing
        Api.Data.scoreReadability200ResponseDecoder


{-| Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
-}
scoreText : String -> String -> Api.Request Api.Data.ScoreText200Response
scoreText title_query text_query =
    Api.request
        "GET"
        "/score-text"
        []
        [ ( "title", Just <| identity title_query ), ( "text", Just <| identity text_query ) ]
        []
        Nothing
        Api.Data.scoreText200ResponseDecoder


{-| Find the singular form of a word.
-}
singularizeWord : String -> Api.Request Api.Data.SingularizeWord200Response
singularizeWord word_query =
    Api.request
        "GET"
        "/singularize-word"
        []
        [ ( "word", Just <| identity word_query ) ]
        []
        Nothing
        Api.Data.singularizeWord200ResponseDecoder


{-| The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
-}
stemText : String -> Api.Request Api.Data.StemText200Response
stemText text_query =
    Api.request
        "GET"
        "/stem-text"
        []
        [ ( "text", Just <| identity text_query ) ]
        []
        Nothing
        Api.Data.stemText200ResponseDecoder


{-| Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
-}
tagPartOfSpeech : String -> Api.Request Api.Data.TagPartOfSpeech200Response
tagPartOfSpeech text_query =
    Api.request
        "GET"
        "/tag-pos"
        []
        [ ( "text", Just <| identity text_query ) ]
        []
        Nothing
        Api.Data.tagPartOfSpeech200ResponseDecoder

