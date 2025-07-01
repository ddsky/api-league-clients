(ns api-league.api.art
  (:require [api-league.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-metric :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-flavonoids-inner :refer :all]
            [api-league.specs.random-riddle-api-200-response :refer :all]
            [api-league.specs.search-games-api-200-response-sorting-options-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-us :refer :all]
            [api-league.specs.search-memes-api-200-response-memes-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-ingredients-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-instructions-inner :refer :all]
            [api-league.specs.search-news-api-200-response-news-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-nutrition-ingredient-breakdown-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-taste :refer :all]
            [api-league.specs.search-web-api-200-response-results-inner :refer :all]
            [api-league.specs.retrieve-game-by-id-200-response-rating :refer :all]
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
            [api-league.specs.search-games-api-200-response-filter-options-inner :refer :all]
            [api-league.specs.top-news-api-200-response-top-news-inner :refer :all]
            [api-league.specs.search-restaurants-api-200-response-restaurants-inner-local-hours-operational :refer :all]
            [api-league.specs.find-similar-books-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-caloric-breakdown :refer :all]
            [api-league.specs.tag-part-of-speech-api-200-response :refer :all]
            [api-league.specs.search-gifs-api-200-response-images-inner :refer :all]
            [api-league.specs.score-text-api-200-response-interestingness-subscores :refer :all]
            [api-league.specs.generate-nonsense-word-api-200-response :refer :all]
            [api-league.specs.search-games-api-200-response-results-inner-platforms-inner :refer :all]
            [api-league.specs.correct-spelling-api-200-response :refer :all]
            [api-league.specs.score-text-api-200-response-skimmability-mainscores :refer :all]
            [api-league.specs.retrieve-game-by-id-200-response-official-stores-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition :refer :all]
            [api-league.specs.retrieve-game-by-id-200-response :refer :all]
            [api-league.specs.extract-news-api-200-response :refer :all]
            [api-league.specs.top-news-api-200-response :refer :all]
            [api-league.specs.score-text-api-200-response-style :refer :all]
            [api-league.specs.extract-publish-date-api-200-response :refer :all]
            [api-league.specs.search-royalty-free-images-api-200-response-images-inner :refer :all]
            [api-league.specs.detect-sentiment-api-200-response :refer :all]
            [api-league.specs.find-similar-games-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-ingredient-breakdown-inner-nutrients-inner :refer :all]
            [api-league.specs.score-readability-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-weight-per-serving :refer :all]
            [api-league.specs.detect-sentiment-api-200-response-sentences-inner :refer :all]
            [api-league.specs.search-games-api-200-response-results-inner :refer :all]
            [api-league.specs.search-recipes-api-200-response-recipes-inner-nutrition :refer :all]
            [api-league.specs.list-word-synonyms-api-200-response :refer :all]
            [api-league.specs.stem-text-api-200-response :refer :all]
            [api-league.specs.find-similar-games-api-200-response-results-inner :refer :all]
            [api-league.specs.search-royalty-free-images-api-200-response :refer :all]
            [api-league.specs.extract-news-api-200-response-images-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner :refer :all]
            [api-league.specs.extract-content-from-a-web-page-api-200-response :refer :all]
            [api-league.specs.retrieve-game-by-id-200-response-playtime :refer :all]
            [api-league.specs.search-jokes-api-200-response :refer :all]
            [api-league.specs.search-recipes-api-200-response-recipes-inner :refer :all]
            [api-league.specs.detect-main-image-color-api-200-response-inner :refer :all]
            [api-league.specs.search-games-api-200-response-filter-options-inner-values-inner :refer :all]
            [api-league.specs.search-books-api-200-response-books-inner-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-nutrition :refer :all]
            [api-league.specs.search-royalty-free-images-api-200-response-images-inner-license :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-credits :refer :all]
            [api-league.specs.extract-news-api-200-response-videos-inner :refer :all]
            [api-league.specs.search-restaurants-api-200-response-restaurants-inner-local-hours :refer :all]
            [api-league.specs.search-games-api-200-response-active-filter-options-inner-values-inner :refer :all]
            [api-league.specs.extract-dates-api-200-response-dates-inner :refer :all]
            [api-league.specs.store-key-value-getapi-200-response :refer :all]
            [api-league.specs.search-jokes-api-200-response-jokes-inner :refer :all]
            [api-league.specs.random-poem-api-200-response :refer :all]
            [api-league.specs.retrieve-page-rank-api-200-response :refer :all]
            [api-league.specs.score-text-api-200-response-skimmability :refer :all]
            [api-league.specs.search-news-api-200-response :refer :all]
            [api-league.specs.detect-sentiment-api-200-response-document :refer :all]
            [api-league.specs.random-quote-api-200-response :refer :all]
            [api-league.specs.search-games-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner :refer :all]
            [api-league.specs.verify-email-address-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner-measures :refer :all]
            [api-league.specs.retrieve-game-by-id-200-response-offers-inner :refer :all]
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
            [api-league.specs.retrieve-game-by-id-200-response-offers-inner-price :refer :all]
            [api-league.specs.compute-nutrition-api-200-response-ingredient-breakdown-inner :refer :all]
            [api-league.specs.search-memes-api-200-response :refer :all]
            [api-league.specs.extract-entities-api-200-response :refer :all]
            [api-league.specs.search-recipes-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner :refer :all]
            [api-league.specs.pluralize-word-api-200-response :refer :all]
            [api-league.specs.retrieve-artwork-by-id-200-response :refer :all]
            [api-league.specs.search-icons-api-200-response :refer :all]
            [api-league.specs.random-meme-api-200-response :refer :all]
            [api-league.specs.search-games-api-200-response-active-filter-options-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-times :refer :all]
            [api-league.specs.vector-search-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-ingredients-inner-measures :refer :all]
            [api-league.specs.score-text-api-200-response :refer :all]
            [api-league.specs.top-news-api-200-response-top-news-inner-news-inner :refer :all]
            [api-league.specs.search-recipes-api-200-response-recipes-inner-nutrition-nutrients-inner :refer :all]
            [api-league.specs.score-text-api-200-response-interestingness :refer :all]
            [api-league.specs.search-games-api-200-response-results-inner-rating :refer :all]
            [api-league.specs.art-search-api-200-response :refer :all]
            )
  (:import (java.io File)))


(defn-spec art-search-api-with-http-info any?
  "Art Search API
  Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria."
  ([] (art-search-api-with-http-info nil))
  ([{:keys [query earliest-start-date latest-start-date earliest-end-date latest-end-date min-ratio max-ratio type material technique origin offset number]} (s/map-of keyword? any?)]
   (call-api "/search-artworks" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "earliest-start-date" earliest-start-date "latest-start-date" latest-start-date "earliest-end-date" earliest-end-date "latest-end-date" latest-end-date "min-ratio" min-ratio "max-ratio" max-ratio "type" type "material" material "technique" technique "origin" origin "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec art-search-api art-search-api-200-response-spec
  "Art Search API
  Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria."
  ([] (art-search-api nil))
  ([optional-params any?]
   (let [res (:data (art-search-api-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode art-search-api-200-response-spec res st/string-transformer)
        res))))


(defn-spec image-to-ascii-art-by-urlapi-with-http-info any?
  "Image to Ascii Art by URL API
  Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter."
  ([url string?, ] (image-to-ascii-art-by-urlapi-with-http-info url nil))
  ([url string?, {:keys [width height]} (s/map-of keyword? any?)]
   (check-required-params url)
   (call-api "/convert-image-to-ascii-txt" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"url" url "width" width "height" height }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec image-to-ascii-art-by-urlapi string?
  "Image to Ascii Art by URL API
  Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter."
  ([url string?, ] (image-to-ascii-art-by-urlapi url nil))
  ([url string?, optional-params any?]
   (let [res (:data (image-to-ascii-art-by-urlapi-with-http-info url optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec random-poem-api-with-http-info any?
  "Random Poem API
  Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines)."
  ([] (random-poem-api-with-http-info nil))
  ([{:keys [min-lines max-lines]} (s/map-of keyword? any?)]
   (call-api "/retrieve-random-poem" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"min-lines" min-lines "max-lines" max-lines }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec random-poem-api random-poem-api-200-response-spec
  "Random Poem API
  Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines)."
  ([] (random-poem-api nil))
  ([optional-params any?]
   (let [res (:data (random-poem-api-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode random-poem-api-200-response-spec res st/string-transformer)
        res))))


(defn-spec retrieve-artwork-by-id-with-http-info any?
  "Retrieve Artwork by Id
  Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork."
  [id int?]
  (check-required-params id)
  (call-api "/retrieve-artwork" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"id" id }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec retrieve-artwork-by-id retrieve-artwork-by-id-200-response-spec
  "Retrieve Artwork by Id
  Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork."
  [id int?]
  (let [res (:data (retrieve-artwork-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode retrieve-artwork-by-id-200-response-spec res st/string-transformer)
       res)))


