(ns api-league.api.media
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


(defn-spec detect-main-image-color-api-with-http-info any?
  "Detect Main Image Color API
  Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF."
  [url string?]
  (check-required-params url)
  (call-api "/detect-color" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"url" url }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec detect-main-image-color-api (s/coll-of detect-main-image-color-api-200-response-inner-spec)
  "Detect Main Image Color API
  Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF."
  [url string?]
  (let [res (:data (detect-main-image-color-api-with-http-info url))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of detect-main-image-color-api-200-response-inner-spec) res st/string-transformer)
       res)))


(defn-spec rescale-image-api-with-http-info any?
  "Rescale Image API
  Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image."
  [url string?, width int?, height int?, crop boolean?]
  (check-required-params url width height crop)
  (call-api "/rescale-image" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"url" url "width" width "height" height "crop" crop }
             :form-params   {}
             :content-types []
             :accepts       ["application/octet-stream"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec rescale-image-api any?
  "Rescale Image API
  Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image."
  [url string?, width int?, height int?, crop boolean?]
  (let [res (:data (rescale-image-api-with-http-info url width height crop))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec search-icons-api-with-http-info any?
  "Search Icons API
  Search through millions of icons to match any topic you want."
  ([query string?, ] (search-icons-api-with-http-info query nil))
  ([query string?, {:keys [only-public-domain number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/search-icons" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "only-public-domain" only-public-domain "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-icons-api search-icons-api-200-response-spec
  "Search Icons API
  Search through millions of icons to match any topic you want."
  ([query string?, ] (search-icons-api query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-icons-api-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-icons-api-200-response-spec res st/string-transformer)
        res))))


(defn-spec search-royalty-free-images-api-with-http-info any?
  "Search Royalty Free Images API
  Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image."
  ([query string?, ] (search-royalty-free-images-api-with-http-info query nil))
  ([query string?, {:keys [number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/search-images" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-royalty-free-images-api search-royalty-free-images-api-200-response-spec
  "Search Royalty Free Images API
  Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image."
  ([query string?, ] (search-royalty-free-images-api query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-royalty-free-images-api-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-royalty-free-images-api-200-response-spec res st/string-transformer)
        res))))


(defn-spec vector-search-api-with-http-info any?
  "Vector Search API
  Search through over 700,000 free to use vector icons. The license is either \"PUBLIC_DOMAIN\" or \"ATTRIBUTION\". If it is \"ATTRIBUTION\" just attribute the author somewhere in your project."
  ([query string?, ] (vector-search-api-with-http-info query nil))
  ([query string?, {:keys [offset number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/search-vectors" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec vector-search-api vector-search-api-200-response-spec
  "Vector Search API
  Search through over 700,000 free to use vector icons. The license is either \"PUBLIC_DOMAIN\" or \"ATTRIBUTION\". If it is \"ATTRIBUTION\" just attribute the author somewhere in your project."
  ([query string?, ] (vector-search-api query nil))
  ([query string?, optional-params any?]
   (let [res (:data (vector-search-api-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode vector-search-api-200-response-spec res st/string-transformer)
        res))))


