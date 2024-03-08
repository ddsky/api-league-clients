(ns api-league.api.math
  (:require [api-league.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [api-league.specs.search-gifs-200-response-images-inner :refer :all]
            [api-league.specs.search-memes-200-response-memes-inner :refer :all]
            [api-league.specs.singularize-word-200-response :refer :all]
            [api-league.specs.generate-nonsense-word-200-response :refer :all]
            [api-league.specs.detect-language-200-response-inner :refer :all]
            [api-league.specs.random-meme-200-response :refer :all]
            [api-league.specs.random-trivia-200-response :refer :all]
            [api-league.specs.extract-authors-200-response :refer :all]
            [api-league.specs.extract-news-200-response :refer :all]
            [api-league.specs.search-news-200-response :refer :all]
            [api-league.specs.search-memes-200-response :refer :all]
            [api-league.specs.extract-dates-200-response :refer :all]
            [api-league.specs.score-text-200-response :refer :all]
            [api-league.specs.detect-main-image-color-200-response-inner :refer :all]
            [api-league.specs.search-jokes-200-response :refer :all]
            [api-league.specs.search-web-200-response :refer :all]
            [api-league.specs.random-poem-200-response :refer :all]
            [api-league.specs.score-text-200-response-interestingness :refer :all]
            [api-league.specs.score-text-200-response-readability-subscores :refer :all]
            [api-league.specs.pluralize-word-200-response :refer :all]
            [api-league.specs.convert-units-200-response :refer :all]
            [api-league.specs.find-similar-books-200-response :refer :all]
            [api-league.specs.score-text-200-response-skimmability-mainscores :refer :all]
            [api-league.specs.search-gifs-200-response :refer :all]
            [api-league.specs.score-text-200-response-skimmability :refer :all]
            [api-league.specs.search-books-200-response :refer :all]
            [api-league.specs.search-royalty-free-images-200-response-images-inner-license :refer :all]
            [api-league.specs.detect-sentiment-200-response-document :refer :all]
            [api-league.specs.store-key-value-get-200-response :refer :all]
            [api-league.specs.search-books-200-response-books-inner :refer :all]
            [api-league.specs.text-stemming-200-response :refer :all]
            [api-league.specs.detect-sentiment-200-response :refer :all]
            [api-league.specs.score-text-200-response-interestingness-subscores :refer :all]
            [api-league.specs.score-text-200-response-skimmability-subscores :refer :all]
            [api-league.specs.search-royalty-free-images-200-response-images-inner :refer :all]
            [api-league.specs.search-news-200-response-news-inner :refer :all]
            [api-league.specs.extract-entities-200-response :refer :all]
            [api-league.specs.search-royalty-free-images-200-response :refer :all]
            [api-league.specs.detect-sentiment-200-response-sentences-inner :refer :all]
            [api-league.specs.random-quote-200-response :refer :all]
            [api-league.specs.extract-content-from-a-web-page-200-response :refer :all]
            [api-league.specs.score-text-200-response-readability :refer :all]
            [api-league.specs.score-text-200-response-style :refer :all]
            [api-league.specs.part-of-speech-tagging-200-response :refer :all]
            [api-league.specs.extract-dates-200-response-dates-inner :refer :all]
            [api-league.specs.search-web-200-response-results-inner :refer :all]
            [api-league.specs.score-text-200-response-style-subscores :refer :all]
            [api-league.specs.extract-entities-200-response-entities-inner :refer :all]
            [api-league.specs.list-word-synonyms-200-response :refer :all]
            [api-league.specs.read-key-value-from-store-200-response :refer :all]
            [api-league.specs.score-readability-200-response :refer :all]
            [api-league.specs.extract-publish-date-200-response :refer :all]
            [api-league.specs.score-text-200-response-readability-mainscores :refer :all]
            [api-league.specs.search-jokes-200-response-jokes-inner :refer :all]
            [api-league.specs.extract-authors-200-response-authors-inner :refer :all]
            [api-league.specs.correct-spelling-200-response :refer :all]
            )
  (:import (java.io File)))


(defn-spec convert-units-with-http-info any?
  "Convert Units
  Convert units from one to another. The API returns the amount and the unit of the target unit."
  ([source-amount float?, source-unit string?, target-unit string?, ] (convert-units-with-http-info source-amount source-unit target-unit nil))
  ([source-amount float?, source-unit string?, target-unit string?, {:keys [food-name]} (s/map-of keyword? any?)]
   (check-required-params source-amount source-unit target-unit)
   (call-api "/convert-units" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"source-amount" source-amount "source-unit" source-unit "target-unit" target-unit "food-name" food-name }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec convert-units convert-units-200-response-spec
  "Convert Units
  Convert units from one to another. The API returns the amount and the unit of the target unit."
  ([source-amount float?, source-unit string?, target-unit string?, ] (convert-units source-amount source-unit target-unit nil))
  ([source-amount float?, source-unit string?, target-unit string?, optional-params any?]
   (let [res (:data (convert-units-with-http-info source-amount source-unit target-unit optional-params))]
     (if (:decode-models *api-context*)
        (st/decode convert-units-200-response-spec res st/string-transformer)
        res))))


