(ns api-league.api.text
  (:require [api-league.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-metric :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-flavonoids-inner :refer :all]
            [api-league.specs.random-riddle-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-us :refer :all]
            [api-league.specs.search-memes-api-200-response-memes-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-ingredients-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-instructions-inner :refer :all]
            [api-league.specs.search-news-api-200-response-news-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-nutrition-ingredient-breakdown-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-taste :refer :all]
            [api-league.specs.search-web-api-200-response-results-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-dietary-properties :refer :all]
            [api-league.specs.search-restaurants-api-200-response-restaurants-inner-address :refer :all]
            [api-league.specs.score-text-api-200-response-style-subscores :refer :all]
            [api-league.specs.extract-entities-api-200-response-entities-inner :refer :all]
            [api-league.specs.singularize-word-api-200-response :refer :all]
            [api-league.specs.detect-language-api-200-response-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response :refer :all]
            [api-league.specs.search-web-api-200-response :refer :all]
            [api-league.specs.compute-nutrition-api-200-response :refer :all]
            [api-league.specs.score-text-api-200-response-readability-mainscores :refer :all]
            [api-league.specs.score-text-api-200-response-readability :refer :all]
            [api-league.specs.read-key-value-from-store-api-200-response :refer :all]
            [api-league.specs.detect-gender-by-name-api-200-response :refer :all]
            [api-league.specs.search-restaurants-api-200-response-restaurants-inner :refer :all]
            [api-league.specs.compute-nutrition-api-200-response-ingredient-breakdown-inner-nutrients-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-ingredient-breakdown-inner :refer :all]
            [api-league.specs.top-news-api-200-response-top-news-inner :refer :all]
            [api-league.specs.search-restaurants-api-200-response-restaurants-inner-local-hours-operational :refer :all]
            [api-league.specs.find-similar-books-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-caloric-breakdown :refer :all]
            [api-league.specs.tag-part-of-speech-api-200-response :refer :all]
            [api-league.specs.search-gifs-api-200-response-images-inner :refer :all]
            [api-league.specs.score-text-api-200-response-interestingness-subscores :refer :all]
            [api-league.specs.generate-nonsense-word-api-200-response :refer :all]
            [api-league.specs.correct-spelling-api-200-response :refer :all]
            [api-league.specs.score-text-api-200-response-skimmability-mainscores :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition :refer :all]
            [api-league.specs.extract-news-api-200-response :refer :all]
            [api-league.specs.top-news-api-200-response :refer :all]
            [api-league.specs.score-text-api-200-response-style :refer :all]
            [api-league.specs.extract-publish-date-api-200-response :refer :all]
            [api-league.specs.search-royalty-free-images-api-200-response-images-inner :refer :all]
            [api-league.specs.detect-sentiment-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-ingredient-breakdown-inner-nutrients-inner :refer :all]
            [api-league.specs.score-readability-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-weight-per-serving :refer :all]
            [api-league.specs.detect-sentiment-api-200-response-sentences-inner :refer :all]
            [api-league.specs.search-recipes-api-200-response-recipes-inner-nutrition :refer :all]
            [api-league.specs.list-word-synonyms-api-200-response :refer :all]
            [api-league.specs.stem-text-api-200-response :refer :all]
            [api-league.specs.search-royalty-free-images-api-200-response :refer :all]
            [api-league.specs.extract-news-api-200-response-images-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner :refer :all]
            [api-league.specs.extract-content-from-a-web-page-api-200-response :refer :all]
            [api-league.specs.search-jokes-api-200-response :refer :all]
            [api-league.specs.search-recipes-api-200-response-recipes-inner :refer :all]
            [api-league.specs.detect-main-image-color-api-200-response-inner :refer :all]
            [api-league.specs.search-books-api-200-response-books-inner-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-nutrition :refer :all]
            [api-league.specs.search-royalty-free-images-api-200-response-images-inner-license :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-credits :refer :all]
            [api-league.specs.extract-news-api-200-response-videos-inner :refer :all]
            [api-league.specs.search-restaurants-api-200-response-restaurants-inner-local-hours :refer :all]
            [api-league.specs.extract-dates-api-200-response-dates-inner :refer :all]
            [api-league.specs.store-key-value-getapi-200-response :refer :all]
            [api-league.specs.search-jokes-api-200-response-jokes-inner :refer :all]
            [api-league.specs.random-poem-api-200-response :refer :all]
            [api-league.specs.retrieve-page-rank-api-200-response :refer :all]
            [api-league.specs.score-text-api-200-response-skimmability :refer :all]
            [api-league.specs.search-news-api-200-response :refer :all]
            [api-league.specs.detect-sentiment-api-200-response-document :refer :all]
            [api-league.specs.random-quote-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner :refer :all]
            [api-league.specs.verify-email-address-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner-measures :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response :refer :all]
            [api-league.specs.convert-units-api-200-response :refer :all]
            [api-league.specs.extract-dates-api-200-response :refer :all]
            [api-league.specs.vector-search-api-200-response-vectors-inner :refer :all]
            [api-league.specs.random-trivia-api-200-response :refer :all]
            [api-league.specs.extract-authors-api-200-response-authors-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-instructions-inner :refer :all]
            [api-league.specs.search-gifs-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-credits :refer :all]
            [api-league.specs.search-restaurants-api-200-response :refer :all]
            [api-league.specs.extract-authors-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-nutrients-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-scores :refer :all]
            [api-league.specs.score-text-api-200-response-skimmability-subscores :refer :all]
            [api-league.specs.search-books-api-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-instructions-inner-steps-inner :refer :all]
            [api-league.specs.score-text-api-200-response-readability-subscores :refer :all]
            [api-league.specs.compute-nutrition-api-200-response-ingredient-breakdown-inner :refer :all]
            [api-league.specs.search-memes-api-200-response :refer :all]
            [api-league.specs.extract-entities-api-200-response :refer :all]
            [api-league.specs.search-recipes-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner :refer :all]
            [api-league.specs.pluralize-word-api-200-response :refer :all]
            [api-league.specs.search-icons-api-200-response :refer :all]
            [api-league.specs.random-meme-api-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-times :refer :all]
            [api-league.specs.vector-search-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-ingredients-inner-measures :refer :all]
            [api-league.specs.score-text-api-200-response :refer :all]
            [api-league.specs.top-news-api-200-response-top-news-inner-news-inner :refer :all]
            [api-league.specs.search-recipes-api-200-response-recipes-inner-nutrition-nutrients-inner :refer :all]
            [api-league.specs.score-text-api-200-response-interestingness :refer :all]
            )
  (:import (java.io File)))


(defn-spec correct-spelling-api-with-http-info any?
  "Correct Spelling API
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

(defn-spec correct-spelling-api correct-spelling-api-200-response-spec
  "Correct Spelling API
  The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es)."
  [text string?, language string?]
  (let [res (:data (correct-spelling-api-with-http-info text language))]
    (if (:decode-models *api-context*)
       (st/decode correct-spelling-api-200-response-spec res st/string-transformer)
       res)))


(defn-spec detect-gender-by-name-api-with-http-info any?
  "Detect Gender by Name API
  Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known."
  [name string?]
  (check-required-params name)
  (call-api "/detect-gender" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"name" name }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec detect-gender-by-name-api detect-gender-by-name-api-200-response-spec
  "Detect Gender by Name API
  Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known."
  [name string?]
  (let [res (:data (detect-gender-by-name-api-with-http-info name))]
    (if (:decode-models *api-context*)
       (st/decode detect-gender-by-name-api-200-response-spec res st/string-transformer)
       res)))


(defn-spec detect-language-api-with-http-info any?
  "Detect Language API
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

(defn-spec detect-language-api (s/coll-of detect-language-api-200-response-inner-spec)
  "Detect Language API
  Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages."
  [text string?]
  (let [res (:data (detect-language-api-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of detect-language-api-200-response-inner-spec) res st/string-transformer)
       res)))


(defn-spec detect-sentiment-api-with-http-info any?
  "Detect Sentiment API
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

(defn-spec detect-sentiment-api detect-sentiment-api-200-response-spec
  "Detect Sentiment API
  Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence."
  [text string?]
  (let [res (:data (detect-sentiment-api-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode detect-sentiment-api-200-response-spec res st/string-transformer)
       res)))


(defn-spec extract-dates-api-with-http-info any?
  "Extract Dates API
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

(defn-spec extract-dates-api extract-dates-api-200-response-spec
  "Extract Dates API
  Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970)."
  [text string?]
  (let [res (:data (extract-dates-api-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode extract-dates-api-200-response-spec res st/string-transformer)
       res)))


(defn-spec extract-entities-api-with-http-info any?
  "Extract Entities API
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

(defn-spec extract-entities-api extract-entities-api-200-response-spec
  "Extract Entities API
  Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc."
  [text string?]
  (let [res (:data (extract-entities-api-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode extract-entities-api-200-response-spec res st/string-transformer)
       res)))


(defn-spec list-word-synonyms-api-with-http-info any?
  "List Word Synonyms API
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

(defn-spec list-word-synonyms-api list-word-synonyms-api-200-response-spec
  "List Word Synonyms API
  Return synonyms of a word."
  [word string?]
  (let [res (:data (list-word-synonyms-api-with-http-info word))]
    (if (:decode-models *api-context*)
       (st/decode list-word-synonyms-api-200-response-spec res st/string-transformer)
       res)))


(defn-spec pluralize-word-api-with-http-info any?
  "Pluralize Word API
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

(defn-spec pluralize-word-api pluralize-word-api-200-response-spec
  "Pluralize Word API
  Find the plural form of a word."
  [word string?]
  (let [res (:data (pluralize-word-api-with-http-info word))]
    (if (:decode-models *api-context*)
       (st/decode pluralize-word-api-200-response-spec res st/string-transformer)
       res)))


(defn-spec score-readability-api-with-http-info any?
  "Score Readability API
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

(defn-spec score-readability-api score-readability-api-200-response-spec
  "Score Readability API
  Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau."
  [text string?]
  (let [res (:data (score-readability-api-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode score-readability-api-200-response-spec res st/string-transformer)
       res)))


(defn-spec score-text-api-with-http-info any?
  "Score Text API
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

(defn-spec score-text-api score-text-api-200-response-spec
  "Score Text API
  Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned."
  [title string?, text string?]
  (let [res (:data (score-text-api-with-http-info title text))]
    (if (:decode-models *api-context*)
       (st/decode score-text-api-200-response-spec res st/string-transformer)
       res)))


(defn-spec singularize-word-api-with-http-info any?
  "Singularize Word API
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

(defn-spec singularize-word-api singularize-word-api-200-response-spec
  "Singularize Word API
  Find the singular form of a word."
  [word string?]
  (let [res (:data (singularize-word-api-with-http-info word))]
    (if (:decode-models *api-context*)
       (st/decode singularize-word-api-200-response-spec res st/string-transformer)
       res)))


(defn-spec stem-text-api-with-http-info any?
  "Stem Text API
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

(defn-spec stem-text-api stem-text-api-200-response-spec
  "Stem Text API
  The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing."
  [text string?]
  (let [res (:data (stem-text-api-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode stem-text-api-200-response-spec res st/string-transformer)
       res)))


(defn-spec tag-part-of-speech-api-with-http-info any?
  "Tag Part of Speech API
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

(defn-spec tag-part-of-speech-api tag-part-of-speech-api-200-response-spec
  "Tag Part of Speech API
  Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text."
  [text string?]
  (let [res (:data (tag-part-of-speech-api-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode tag-part-of-speech-api-200-response-spec res st/string-transformer)
       res)))


