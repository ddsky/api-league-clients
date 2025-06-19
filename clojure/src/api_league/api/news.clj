(ns api-league.api.news
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
            [api-league.specs.retrieve-artwork-by-id-200-response :refer :all]
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
            [api-league.specs.art-search-api-200-response :refer :all]
            )
  (:import (java.io File)))


(defn-spec extract-news-api-with-http-info any?
  "Extract News API
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

(defn-spec extract-news-api extract-news-api-200-response-spec
  "Extract News API
  Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article."
  [url string?, analyze boolean?]
  (let [res (:data (extract-news-api-with-http-info url analyze))]
    (if (:decode-models *api-context*)
       (st/decode extract-news-api-200-response-spec res st/string-transformer)
       res)))


(defn-spec search-news-api-with-http-info any?
  "Search News API
  Search and filter millions of news from over 200 countries in 90 languages by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language."
  ([] (search-news-api-with-http-info nil))
  ([{:keys [text source-countries language min-sentiment max-sentiment earliest-publish-date latest-publish-date news-sources authors categories entities location-filter sort sort-direction offset number]} (s/map-of keyword? any?)]
   (call-api "/search-news" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"text" text "source-countries" source-countries "language" language "min-sentiment" min-sentiment "max-sentiment" max-sentiment "earliest-publish-date" earliest-publish-date "latest-publish-date" latest-publish-date "news-sources" news-sources "authors" authors "categories" categories "entities" entities "location-filter" location-filter "sort" sort "sort-direction" sort-direction "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-news-api search-news-api-200-response-spec
  "Search News API
  Search and filter millions of news from over 200 countries in 90 languages by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language."
  ([] (search-news-api nil))
  ([optional-params any?]
   (let [res (:data (search-news-api-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-news-api-200-response-spec res st/string-transformer)
        res))))


(defn-spec top-news-api-with-http-info any?
  "Top News API
  Get the top news from a country (over 220 are supported) in a language (over 90 are supported) for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked."
  ([source-country string?, language string?, ] (top-news-api-with-http-info source-country language nil))
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

(defn-spec top-news-api top-news-api-200-response-spec
  "Top News API
  Get the top news from a country (over 220 are supported) in a language (over 90 are supported) for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked."
  ([source-country string?, language string?, ] (top-news-api source-country language nil))
  ([source-country string?, language string?, optional-params any?]
   (let [res (:data (top-news-api-with-http-info source-country language optional-params))]
     (if (:decode-models *api-context*)
        (st/decode top-news-api-200-response-spec res st/string-transformer)
        res))))


