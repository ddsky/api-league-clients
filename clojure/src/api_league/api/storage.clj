(ns api-league.api.storage
  (:require [api-league.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [api-league.specs.search-restaurants-200-response-restaurants-inner-local-hours :refer :all]
            [api-league.specs.random-riddle-200-response :refer :all]
            [api-league.specs.search-gifs-200-response-images-inner :refer :all]
            [api-league.specs.search-memes-200-response-memes-inner :refer :all]
            [api-league.specs.generate-nonsense-word-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-taste :refer :all]
            [api-league.specs.compute-nutrition-200-response-ingredient-breakdown-inner :refer :all]
            [api-league.specs.random-meme-200-response :refer :all]
            [api-league.specs.random-trivia-200-response :refer :all]
            [api-league.specs.top-news-200-response-top-news-inner :refer :all]
            [api-league.specs.extract-news-200-response :refer :all]
            [api-league.specs.search-news-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-nutrition-ingredient-breakdown-inner :refer :all]
            [api-league.specs.search-recipes-200-response-recipes-inner-nutrition :refer :all]
            [api-league.specs.search-restaurants-200-response-restaurants-inner-address :refer :all]
            [api-league.specs.extract-dates-200-response :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition-ingredient-breakdown-inner-nutrients-inner :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-ingredients-inner-measures-metric :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-instructions-inner :refer :all]
            [api-league.specs.score-text-200-response :refer :all]
            [api-league.specs.detect-main-image-color-200-response-inner :refer :all]
            [api-league.specs.search-web-200-response :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-ingredients-inner-measures :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-instructions-inner :refer :all]
            [api-league.specs.random-poem-200-response :refer :all]
            [api-league.specs.score-text-200-response-interestingness :refer :all]
            [api-league.specs.search-restaurants-200-response :refer :all]
            [api-league.specs.pluralize-word-200-response :refer :all]
            [api-league.specs.find-similar-books-200-response :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition-nutrients-inner :refer :all]
            [api-league.specs.search-gifs-200-response :refer :all]
            [api-league.specs.score-text-200-response-skimmability :refer :all]
            [api-league.specs.search-books-200-response :refer :all]
            [api-league.specs.search-royalty-free-images-200-response-images-inner-license :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-instructions-inner-steps-inner :refer :all]
            [api-league.specs.search-recipes-200-response :refer :all]
            [api-league.specs.detect-sentiment-200-response-document :refer :all]
            [api-league.specs.store-key-value-get-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-dietary-properties :refer :all]
            [api-league.specs.search-icons-200-response :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner :refer :all]
            [api-league.specs.score-text-200-response-interestingness-subscores :refer :all]
            [api-league.specs.score-text-200-response-skimmability-subscores :refer :all]
            [api-league.specs.search-books-200-response-books-inner-inner :refer :all]
            [api-league.specs.search-restaurants-200-response-restaurants-inner :refer :all]
            [api-league.specs.extract-content-from-a-web-page-200-response :refer :all]
            [api-league.specs.compute-nutrition-200-response :refer :all]
            [api-league.specs.verify-email-address-200-response :refer :all]
            [api-league.specs.score-text-200-response-readability :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-nutrition :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-credits :refer :all]
            [api-league.specs.extract-news-200-response-images-inner :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition-caloric-breakdown :refer :all]
            [api-league.specs.score-text-200-response-style :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition-ingredient-breakdown-inner :refer :all]
            [api-league.specs.extract-entities-200-response-entities-inner :refer :all]
            [api-league.specs.score-readability-200-response :refer :all]
            [api-league.specs.extract-publish-date-200-response :refer :all]
            [api-league.specs.score-text-200-response-readability-mainscores :refer :all]
            [api-league.specs.search-jokes-200-response-jokes-inner :refer :all]
            [api-league.specs.search-restaurants-200-response-restaurants-inner-local-hours-operational :refer :all]
            [api-league.specs.detect-gender-by-name-200-response :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition-flavonoids-inner :refer :all]
            [api-league.specs.correct-spelling-200-response :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner :refer :all]
            [api-league.specs.extract-news-200-response-videos-inner :refer :all]
            [api-league.specs.singularize-word-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-ingredients-inner :refer :all]
            [api-league.specs.detect-language-200-response-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-ingredients-inner-measures :refer :all]
            [api-league.specs.tag-part-of-speech-200-response :refer :all]
            [api-league.specs.extract-authors-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-scores :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-instructions-inner-steps-inner :refer :all]
            [api-league.specs.search-memes-200-response :refer :all]
            [api-league.specs.search-jokes-200-response :refer :all]
            [api-league.specs.search-recipes-200-response-recipes-inner :refer :all]
            [api-league.specs.score-text-200-response-readability-subscores :refer :all]
            [api-league.specs.convert-units-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-credits :refer :all]
            [api-league.specs.score-text-200-response-skimmability-mainscores :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response :refer :all]
            [api-league.specs.top-news-200-response-top-news-inner-news-inner :refer :all]
            [api-league.specs.compute-nutrition-200-response-ingredient-breakdown-inner-nutrients-inner :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition :refer :all]
            [api-league.specs.detect-sentiment-200-response :refer :all]
            [api-league.specs.top-news-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-times :refer :all]
            [api-league.specs.search-royalty-free-images-200-response-images-inner :refer :all]
            [api-league.specs.search-news-200-response-news-inner :refer :all]
            [api-league.specs.extract-entities-200-response :refer :all]
            [api-league.specs.search-royalty-free-images-200-response :refer :all]
            [api-league.specs.detect-sentiment-200-response-sentences-inner :refer :all]
            [api-league.specs.random-quote-200-response :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-ingredients-inner-measures-us :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-ingredients-inner :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition-weight-per-serving :refer :all]
            [api-league.specs.extract-dates-200-response-dates-inner :refer :all]
            [api-league.specs.search-recipes-200-response-recipes-inner-nutrition-nutrients-inner :refer :all]
            [api-league.specs.search-web-200-response-results-inner :refer :all]
            [api-league.specs.score-text-200-response-style-subscores :refer :all]
            [api-league.specs.list-word-synonyms-200-response :refer :all]
            [api-league.specs.read-key-value-from-store-200-response :refer :all]
            [api-league.specs.retrieve-page-rank-200-response :refer :all]
            [api-league.specs.stem-text-200-response :refer :all]
            [api-league.specs.search-drinks-200-response :refer :all]
            [api-league.specs.extract-authors-200-response-authors-inner :refer :all]
            )
  (:import (java.io File)))


(defn-spec read-key-value-from-store-with-http-info any?
  "Read Key Value from Store
  Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations."
  [key string?]
  (check-required-params key)
  (call-api "/read-key-value" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"key" key }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec read-key-value-from-store read-key-value-from-store-200-response-spec
  "Read Key Value from Store
  Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations."
  [key string?]
  (let [res (:data (read-key-value-from-store-with-http-info key))]
    (if (:decode-models *api-context*)
       (st/decode read-key-value-from-store-200-response-spec res st/string-transformer)
       res)))


(defn-spec store-key-value-get-with-http-info any?
  "Store Key Value (GET)
  Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations."
  [key string?, value string?]
  (check-required-params key value)
  (call-api "/store-key-value" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"key" key "value" value }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec store-key-value-get store-key-value-get-200-response-spec
  "Store Key Value (GET)
  Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations."
  [key string?, value string?]
  (let [res (:data (store-key-value-get-with-http-info key value))]
    (if (:decode-models *api-context*)
       (st/decode store-key-value-get-200-response-spec res st/string-transformer)
       res)))


