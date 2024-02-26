(ns api-league.api.humor
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


(defn-spec generate-nonsense-word-with-http-info any?
  "Generate Nonsense Word
  Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is."
  []
  (call-api "/generate-nonsense-word" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec generate-nonsense-word inline-response-200-8-spec
  "Generate Nonsense Word
  Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is."
  []
  (let [res (:data (generate-nonsense-word-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-8-spec res st/string-transformer)
       res)))


(defn-spec random-joke-with-http-info any?
  "Random Joke
  This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\"."
  ([] (random-joke-with-http-info nil))
  ([{:keys [include-tags exclude-tags min-rating max-length]} (s/map-of keyword? any?)]
   (call-api "/retrieve-random-joke" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"include-tags" include-tags "exclude-tags" exclude-tags "min-rating" min-rating "max-length" max-length }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec random-joke inline-response-200-4-jokes-spec
  "Random Joke
  This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\"."
  ([] (random-joke nil))
  ([optional-params any?]
   (let [res (:data (random-joke-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-4-jokes-spec res st/string-transformer)
        res))))


(defn-spec random-meme-with-http-info any?
  "Random Meme
  Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter."
  ([] (random-meme-with-http-info nil))
  ([{:keys [keywords keywords-in-image media-type min-rating max-age-days]} (s/map-of keyword? any?)]
   (call-api "/retrieve-random-meme" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"keywords" keywords "keywords-in-image" keywords-in-image "media-type" media-type "min-rating" min-rating "max-age-days" max-age-days }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec random-meme inline-response-200-6-spec
  "Random Meme
  Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter."
  ([] (random-meme nil))
  ([optional-params any?]
   (let [res (:data (random-meme-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-6-spec res st/string-transformer)
        res))))


(defn-spec search-gifs-with-http-info any?
  "Search Gifs
  Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif."
  ([query string?, ] (search-gifs-with-http-info query nil))
  ([query string?, {:keys [number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/search-gifs" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-gifs inline-response-200-7-spec
  "Search Gifs
  Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif."
  ([query string?, ] (search-gifs query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-gifs-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-7-spec res st/string-transformer)
        res))))


(defn-spec search-jokes-with-http-info any?
  "Search Jokes
  With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes."
  ([] (search-jokes-with-http-info nil))
  ([{:keys [keywords include-tags exclude-tags min-rating max-length offset number]} (s/map-of keyword? any?)]
   (call-api "/search-jokes" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"keywords" keywords "include-tags" include-tags "exclude-tags" exclude-tags "min-rating" min-rating "max-length" max-length "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-jokes inline-response-200-4-spec
  "Search Jokes
  With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes."
  ([] (search-jokes nil))
  ([optional-params any?]
   (let [res (:data (search-jokes-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-4-spec res st/string-transformer)
        res))))


(defn-spec search-memes-with-http-info any?
  "Search Memes
  With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings."
  ([] (search-memes-with-http-info nil))
  ([{:keys [keywords keywords-in-image media-type min-rating max-age-days offset number]} (s/map-of keyword? any?)]
   (call-api "/search-memes" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"keywords" keywords "keywords-in-image" keywords-in-image "media-type" media-type "min-rating" min-rating "max-age-days" max-age-days "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-memes inline-response-200-5-spec
  "Search Memes
  With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings."
  ([] (search-memes nil))
  ([optional-params any?]
   (let [res (:data (search-memes-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-5-spec res st/string-transformer)
        res))))


