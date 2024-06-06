(ns api-league.api.text
  (:require [api-league.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [api-league.specs.search-restaurants-200-response-restaurants-inner-local-hours :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-nutrition-caloric-breakdown :refer :all]
            [api-league.specs.search-gifs-200-response-images-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-nutrition-flavonoids-inner :refer :all]
            [api-league.specs.search-memes-200-response-memes-inner :refer :all]
            [api-league.specs.singularize-word-200-response :refer :all]
            [api-league.specs.generate-nonsense-word-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-taste :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-ingredients-inner :refer :all]
            [api-league.specs.compute-nutrition-200-response-ingredient-breakdown-inner :refer :all]
            [api-league.specs.detect-language-200-response-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-ingredients-inner-measures :refer :all]
            [api-league.specs.tag-part-of-speech-200-response :refer :all]
            [api-league.specs.random-meme-200-response :refer :all]
            [api-league.specs.random-trivia-200-response :refer :all]
            [api-league.specs.extract-authors-200-response :refer :all]
            [api-league.specs.top-news-200-response-top-news-inner :refer :all]
            [api-league.specs.extract-news-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-scores :refer :all]
            [api-league.specs.search-news-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-nutrition-ingredient-breakdown-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-instructions-inner-steps-inner :refer :all]
            [api-league.specs.search-memes-200-response :refer :all]
            [api-league.specs.search-recipes-200-response-recipes-inner-nutrition :refer :all]
            [api-league.specs.search-restaurants-200-response-restaurants-inner-address :refer :all]
            [api-league.specs.extract-dates-200-response :refer :all]
            [api-league.specs.score-text-200-response :refer :all]
            [api-league.specs.detect-main-image-color-200-response-inner :refer :all]
            [api-league.specs.search-jokes-200-response :refer :all]
            [api-league.specs.search-web-200-response :refer :all]
            [api-league.specs.search-recipes-200-response-recipes-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-instructions-inner :refer :all]
            [api-league.specs.random-poem-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-instructions-inner-steps-inner-ingredients-inner :refer :all]
            [api-league.specs.score-text-200-response-interestingness :refer :all]
            [api-league.specs.search-restaurants-200-response :refer :all]
            [api-league.specs.score-text-200-response-readability-subscores :refer :all]
            [api-league.specs.pluralize-word-200-response :refer :all]
            [api-league.specs.convert-units-200-response :refer :all]
            [api-league.specs.find-similar-books-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-credits :refer :all]
            [api-league.specs.score-text-200-response-skimmability-mainscores :refer :all]
            [api-league.specs.search-gifs-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response :refer :all]
            [api-league.specs.score-text-200-response-skimmability :refer :all]
            [api-league.specs.top-news-200-response-top-news-inner-news-inner :refer :all]
            [api-league.specs.search-books-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-nutrition-weight-per-serving :refer :all]
            [api-league.specs.search-royalty-free-images-200-response-images-inner-license :refer :all]
            [api-league.specs.search-recipes-200-response :refer :all]
            [api-league.specs.compute-nutrition-200-response-ingredient-breakdown-inner-nutrients-inner :refer :all]
            [api-league.specs.detect-sentiment-200-response-document :refer :all]
            [api-league.specs.store-key-value-get-200-response :refer :all]
            [api-league.specs.search-books-200-response-books-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-dietary-properties :refer :all]
            [api-league.specs.detect-sentiment-200-response :refer :all]
            [api-league.specs.score-text-200-response-interestingness-subscores :refer :all]
            [api-league.specs.top-news-200-response :refer :all]
            [api-league.specs.score-text-200-response-skimmability-subscores :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-times :refer :all]
            [api-league.specs.search-royalty-free-images-200-response-images-inner :refer :all]
            [api-league.specs.search-news-200-response-news-inner :refer :all]
            [api-league.specs.extract-entities-200-response :refer :all]
            [api-league.specs.search-royalty-free-images-200-response :refer :all]
            [api-league.specs.detect-sentiment-200-response-sentences-inner :refer :all]
            [api-league.specs.random-quote-200-response :refer :all]
            [api-league.specs.search-restaurants-200-response-restaurants-inner :refer :all]
            [api-league.specs.extract-content-from-a-web-page-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-nutrition-ingredient-breakdown-inner-nutrients-inner :refer :all]
            [api-league.specs.compute-nutrition-200-response :refer :all]
            [api-league.specs.score-text-200-response-readability :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-nutrition :refer :all]
            [api-league.specs.score-text-200-response-style :refer :all]
            [api-league.specs.extract-dates-200-response-dates-inner :refer :all]
            [api-league.specs.search-recipes-200-response-recipes-inner-nutrition-nutrients-inner :refer :all]
            [api-league.specs.search-web-200-response-results-inner :refer :all]
            [api-league.specs.score-text-200-response-style-subscores :refer :all]
            [api-league.specs.extract-entities-200-response-entities-inner :refer :all]
            [api-league.specs.list-word-synonyms-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-ingredients-inner-measures-metric :refer :all]
            [api-league.specs.read-key-value-from-store-200-response :refer :all]
            [api-league.specs.score-readability-200-response :refer :all]
            [api-league.specs.extract-publish-date-200-response :refer :all]
            [api-league.specs.score-text-200-response-readability-mainscores :refer :all]
            [api-league.specs.retrieve-page-rank-200-response :refer :all]
            [api-league.specs.stem-text-200-response :refer :all]
            [api-league.specs.search-jokes-200-response-jokes-inner :refer :all]
            [api-league.specs.search-restaurants-200-response-restaurants-inner-local-hours-operational :refer :all]
            [api-league.specs.extract-authors-200-response-authors-inner :refer :all]
            [api-league.specs.correct-spelling-200-response :refer :all]
            )
  (:import (java.io File)))


(defn-spec correct-spelling-with-http-info any?
  "Correct Spelling
  The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es)."
  [text string?, language string?]
  (check-required-params text language)
  (call-api "/correct-spelling" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"text" text "language" language }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec correct-spelling correct-spelling-200-response-spec
  "Correct Spelling
  The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es)."
  [text string?, language string?]
  (let [res (:data (correct-spelling-with-http-info text language))]
    (if (:decode-models *api-context*)
       (st/decode correct-spelling-200-response-spec res st/string-transformer)
       res)))


(defn-spec detect-language-with-http-info any?
  "Detect Language
  Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages."
  [text string?]
  (check-required-params text)
  (call-api "/detect-language" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"text" text }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec detect-language (s/coll-of detect-language-200-response-inner-spec)
  "Detect Language
  Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages."
  [text string?]
  (let [res (:data (detect-language-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of detect-language-200-response-inner-spec) res st/string-transformer)
       res)))


(defn-spec detect-sentiment-with-http-info any?
  "Detect Sentiment
  Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence."
  [text string?]
  (check-required-params text)
  (call-api "/detect-sentiment" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"text" text }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec detect-sentiment detect-sentiment-200-response-spec
  "Detect Sentiment
  Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence."
  [text string?]
  (let [res (:data (detect-sentiment-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode detect-sentiment-200-response-spec res st/string-transformer)
       res)))


(defn-spec extract-dates-with-http-info any?
  "Extract Dates
  Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970)."
  [text string?]
  (check-required-params text)
  (call-api "/extract-dates" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"text" text }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec extract-dates extract-dates-200-response-spec
  "Extract Dates
  Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970)."
  [text string?]
  (let [res (:data (extract-dates-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode extract-dates-200-response-spec res st/string-transformer)
       res)))


(defn-spec extract-entities-with-http-info any?
  "Extract Entities
  Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc."
  [text string?]
  (check-required-params text)
  (call-api "/extract-entities" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"text" text }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec extract-entities extract-entities-200-response-spec
  "Extract Entities
  Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc."
  [text string?]
  (let [res (:data (extract-entities-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode extract-entities-200-response-spec res st/string-transformer)
       res)))


(defn-spec list-word-synonyms-with-http-info any?
  "List Word Synonyms
  Return synonyms of a word."
  [word string?]
  (check-required-params word)
  (call-api "/list-synonyms" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"word" word }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec list-word-synonyms list-word-synonyms-200-response-spec
  "List Word Synonyms
  Return synonyms of a word."
  [word string?]
  (let [res (:data (list-word-synonyms-with-http-info word))]
    (if (:decode-models *api-context*)
       (st/decode list-word-synonyms-200-response-spec res st/string-transformer)
       res)))


(defn-spec pluralize-word-with-http-info any?
  "Pluralize Word
  Find the plural form of a word."
  [word string?]
  (check-required-params word)
  (call-api "/pluralize-word" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"word" word }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec pluralize-word pluralize-word-200-response-spec
  "Pluralize Word
  Find the plural form of a word."
  [word string?]
  (let [res (:data (pluralize-word-with-http-info word))]
    (if (:decode-models *api-context*)
       (st/decode pluralize-word-200-response-spec res st/string-transformer)
       res)))


(defn-spec score-readability-with-http-info any?
  "Score Readability
  Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau."
  [text string?]
  (check-required-params text)
  (call-api "/score-readability" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"text" text }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec score-readability score-readability-200-response-spec
  "Score Readability
  Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau."
  [text string?]
  (let [res (:data (score-readability-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode score-readability-200-response-spec res st/string-transformer)
       res)))


(defn-spec score-text-with-http-info any?
  "Score Text
  Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned."
  [title string?, text string?]
  (check-required-params title text)
  (call-api "/score-text" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"title" title "text" text }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec score-text score-text-200-response-spec
  "Score Text
  Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned."
  [title string?, text string?]
  (let [res (:data (score-text-with-http-info title text))]
    (if (:decode-models *api-context*)
       (st/decode score-text-200-response-spec res st/string-transformer)
       res)))


(defn-spec singularize-word-with-http-info any?
  "Singularize Word
  Find the singular form of a word."
  [word string?]
  (check-required-params word)
  (call-api "/singularize-word" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"word" word }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec singularize-word singularize-word-200-response-spec
  "Singularize Word
  Find the singular form of a word."
  [word string?]
  (let [res (:data (singularize-word-with-http-info word))]
    (if (:decode-models *api-context*)
       (st/decode singularize-word-200-response-spec res st/string-transformer)
       res)))


(defn-spec stem-text-with-http-info any?
  "Stem Text
  The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing."
  [text string?]
  (check-required-params text)
  (call-api "/stem-text" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"text" text }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec stem-text stem-text-200-response-spec
  "Stem Text
  The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing."
  [text string?]
  (let [res (:data (stem-text-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode stem-text-200-response-spec res st/string-transformer)
       res)))


(defn-spec tag-part-of-speech-with-http-info any?
  "Tag Part of Speech
  Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text."
  [text string?]
  (check-required-params text)
  (call-api "/tag-pos" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"text" text }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec tag-part-of-speech tag-part-of-speech-200-response-spec
  "Tag Part of Speech
  Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text."
  [text string?]
  (let [res (:data (tag-part-of-speech-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode tag-part-of-speech-200-response-spec res st/string-transformer)
       res)))


