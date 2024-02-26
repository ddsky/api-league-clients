(ns api-league.api.text
  (:require [api-league.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [api-league.specs.inline-response-200-19-skimmability-subscores :refer :all]
            [api-league.specs.inline-response-200-19-skimmability :refer :all]
            [api-league.specs.inline-response-200-19-skimmability-mainscores :refer :all]
            [api-league.specs.inline-response-200-19-readability-mainscores :refer :all]
            [api-league.specs.inline-response-200-32 :refer :all]
            [api-league.specs.inline-response-200-31 :refer :all]
            [api-league.specs.inline-response-200-30 :refer :all]
            [api-league.specs.inline-response-200-books :refer :all]
            [api-league.specs.inline-response-200-19-interestingness :refer :all]
            [api-league.specs.inline-response-200-28-images :refer :all]
            [api-league.specs.inline-response-200-29 :refer :all]
            [api-league.specs.inline-response-200-28 :refer :all]
            [api-league.specs.inline-response-200-27 :refer :all]
            [api-league.specs.inline-response-200-2 :refer :all]
            [api-league.specs.inline-response-200-26 :refer :all]
            [api-league.specs.inline-response-200-1 :refer :all]
            [api-league.specs.inline-response-200-25 :refer :all]
            [api-league.specs.inline-response-200-24 :refer :all]
            [api-league.specs.inline-response-200-23 :refer :all]
            [api-league.specs.inline-response-200-22 :refer :all]
            [api-league.specs.inline-response-200-21 :refer :all]
            [api-league.specs.inline-response-200-27-entities :refer :all]
            [api-league.specs.inline-response-200-20 :refer :all]
            [api-league.specs.inline-response-200-9 :refer :all]
            [api-league.specs.inline-response-200-8 :refer :all]
            [api-league.specs.inline-response-200-7 :refer :all]
            [api-league.specs.inline-response-200-6 :refer :all]
            [api-league.specs.inline-response-200-5 :refer :all]
            [api-league.specs.inline-response-200-7-images :refer :all]
            [api-league.specs.inline-response-200-4 :refer :all]
            [api-league.specs.inline-response-200-2-news :refer :all]
            [api-league.specs.inline-response-200-3 :refer :all]
            [api-league.specs.inline-response-200 :refer :all]
            [api-league.specs.inline-response-200-19-style-subscores :refer :all]
            [api-league.specs.inline-response-200-18-sentences :refer :all]
            [api-league.specs.inline-response-200-19 :refer :all]
            [api-league.specs.inline-response-200-18 :refer :all]
            [api-league.specs.inline-response-200-17 :refer :all]
            [api-league.specs.inline-response-200-16 :refer :all]
            [api-league.specs.inline-response-200-19-readability-subscores :refer :all]
            [api-league.specs.inline-response-200-15 :refer :all]
            [api-league.specs.inline-response-200-14 :refer :all]
            [api-league.specs.inline-response-200-13 :refer :all]
            [api-league.specs.inline-response-200-12 :refer :all]
            [api-league.specs.inline-response-200-11 :refer :all]
            [api-league.specs.inline-response-200-10 :refer :all]
            [api-league.specs.inline-response-200-19-interestingness-subscores :refer :all]
            [api-league.specs.inline-response-200-15-results :refer :all]
            [api-league.specs.inline-response-200-5-memes :refer :all]
            [api-league.specs.inline-response-200-4-jokes :refer :all]
            [api-league.specs.inline-response-200-28-license :refer :all]
            [api-league.specs.inline-response-200-18-document :refer :all]
            [api-league.specs.inline-response-200-19-readability :refer :all]
            [api-league.specs.inline-response-200-14-authors :refer :all]
            [api-league.specs.inline-response-200-21-dates :refer :all]
            [api-league.specs.inline-response-200-19-style :refer :all]
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

(defn-spec correct-spelling inline-response-200-16-spec
  "Correct Spelling
  The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es)."
  [text string?, language string?]
  (let [res (:data (correct-spelling-with-http-info text language))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-16-spec res st/string-transformer)
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

(defn-spec detect-language (s/coll-of inline-response-200-17-spec)
  "Detect Language
  Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages."
  [text string?]
  (let [res (:data (detect-language-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of inline-response-200-17-spec) res st/string-transformer)
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

(defn-spec detect-sentiment inline-response-200-18-spec
  "Detect Sentiment
  Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence."
  [text string?]
  (let [res (:data (detect-sentiment-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-18-spec res st/string-transformer)
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

(defn-spec extract-dates inline-response-200-21-spec
  "Extract Dates
  Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970)."
  [text string?]
  (let [res (:data (extract-dates-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-21-spec res st/string-transformer)
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

(defn-spec extract-entities inline-response-200-27-spec
  "Extract Entities
  Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc."
  [text string?]
  (let [res (:data (extract-entities-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-27-spec res st/string-transformer)
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

(defn-spec list-word-synonyms inline-response-200-22-spec
  "List Word Synonyms
  Return synonyms of a word."
  [word string?]
  (let [res (:data (list-word-synonyms-with-http-info word))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-22-spec res st/string-transformer)
       res)))


(defn-spec part-of-speech-tagging-with-http-info any?
  "Part of Speech Tagging
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

(defn-spec part-of-speech-tagging inline-response-200-23-spec
  "Part of Speech Tagging
  Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text."
  [text string?]
  (let [res (:data (part-of-speech-tagging-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-23-spec res st/string-transformer)
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

(defn-spec pluralize-word inline-response-200-26-spec
  "Pluralize Word
  Find the plural form of a word."
  [word string?]
  (let [res (:data (pluralize-word-with-http-info word))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-26-spec res st/string-transformer)
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

(defn-spec score-readability inline-response-200-20-spec
  "Score Readability
  Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau."
  [text string?]
  (let [res (:data (score-readability-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-20-spec res st/string-transformer)
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

(defn-spec score-text inline-response-200-19-spec
  "Score Text
  Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned."
  [title string?, text string?]
  (let [res (:data (score-text-with-http-info title text))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-19-spec res st/string-transformer)
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

(defn-spec singularize-word inline-response-200-25-spec
  "Singularize Word
  Find the singular form of a word."
  [word string?]
  (let [res (:data (singularize-word-with-http-info word))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-25-spec res st/string-transformer)
       res)))


(defn-spec text-stemming-with-http-info any?
  "Text Stemming
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

(defn-spec text-stemming inline-response-200-24-spec
  "Text Stemming
  The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing."
  [text string?]
  (let [res (:data (text-stemming-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-24-spec res st/string-transformer)
       res)))


