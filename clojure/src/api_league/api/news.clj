(ns api-league.api.news
  (:require [api-league.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [api-league.specs.search-restaurants-200-response-restaurants-inner-local-hours :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-nutrition-caloric-breakdown :refer :all]
            [api-league.specs.random-riddle-200-response :refer :all]
            [api-league.specs.search-gifs-200-response-images-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-nutrition-flavonoids-inner :refer :all]
            [api-league.specs.search-memes-200-response-memes-inner :refer :all]
            [api-league.specs.extract-news-200-response-videos-inner :refer :all]
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
            [api-league.specs.retrieve-recipe-information-200-response-dietary-properties :refer :all]
            [api-league.specs.detect-sentiment-200-response :refer :all]
            [api-league.specs.score-text-200-response-interestingness-subscores :refer :all]
            [api-league.specs.top-news-200-response :refer :all]
            [api-league.specs.score-text-200-response-skimmability-subscores :refer :all]
            [api-league.specs.search-books-200-response-books-inner-inner :refer :all]
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
            [api-league.specs.verify-email-address-200-response :refer :all]
            [api-league.specs.score-text-200-response-readability :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-nutrition :refer :all]
            [api-league.specs.extract-news-200-response-images-inner :refer :all]
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
            [api-league.specs.detect-gender-by-name-200-response :refer :all]
            [api-league.specs.extract-authors-200-response-authors-inner :refer :all]
            [api-league.specs.correct-spelling-200-response :refer :all]
            )
  (:import (java.io File)))


(defn-spec extract-news-with-http-info any?
  "Extract News
  Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article."
  [url string?, analyze boolean?]
  (check-required-params url analyze)
  (call-api "/extract-news" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"url" url "analyze" analyze }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec extract-news extract-news-200-response-spec
  "Extract News
  Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article."
  [url string?, analyze boolean?]
  (let [res (:data (extract-news-with-http-info url analyze))]
    (if (:decode-models *api-context*)
       (st/decode extract-news-200-response-spec res st/string-transformer)
       res)))


(defn-spec search-news-with-http-info any?
  "Search News
  Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language."
  ([] (search-news-with-http-info nil))
  ([{:keys [text source-countries language min-sentiment max-sentiment earliest-publish-date latest-publish-date news-sources authors categories entities location-filter sort sort-direction offset number]} (s/map-of keyword? any?)]
   (call-api "/search-news" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"text" text "source-countries" source-countries "language" language "min-sentiment" min-sentiment "max-sentiment" max-sentiment "earliest-publish-date" earliest-publish-date "latest-publish-date" latest-publish-date "news-sources" news-sources "authors" authors "categories" categories "entities" entities "location-filter" location-filter "sort" sort "sort-direction" sort-direction "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-news search-news-200-response-spec
  "Search News
  Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language."
  ([] (search-news nil))
  ([optional-params any?]
   (let [res (:data (search-news-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-news-200-response-spec res st/string-transformer)
        res))))


(defn-spec top-news-with-http-info any?
  "Top News
  Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked."
  ([source-country string?, language string?, ] (top-news-with-http-info source-country language nil))
  ([source-country string?, language string?, {:keys [date headlines-only]} (s/map-of keyword? any?)]
   (check-required-params source-country language)
   (call-api "/retrieve-top-news" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"source-country" source-country "language" language "date" date "headlines-only" headlines-only }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec top-news top-news-200-response-spec
  "Top News
  Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked."
  ([source-country string?, language string?, ] (top-news source-country language nil))
  ([source-country string?, language string?, optional-params any?]
   (let [res (:data (top-news-with-http-info source-country language optional-params))]
     (if (:decode-models *api-context*)
        (st/decode top-news-200-response-spec res st/string-transformer)
        res))))


