(ns api-league.api.humor
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


(defn-spec generate-nonsense-word-api-with-http-info any?
  "Generate Nonsense Word API
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

(defn-spec generate-nonsense-word-api generate-nonsense-word-api-200-response-spec
  "Generate Nonsense Word API
  Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is."
  []
  (let [res (:data (generate-nonsense-word-api-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode generate-nonsense-word-api-200-response-spec res st/string-transformer)
       res)))


(defn-spec random-joke-api-with-http-info any?
  "Random Joke API
  This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\"."
  ([] (random-joke-api-with-http-info nil))
  ([{:keys [include-tags exclude-tags min-rating max-length]} (s/map-of keyword? any?)]
   (call-api "/retrieve-random-joke" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"include-tags" include-tags "exclude-tags" exclude-tags "min-rating" min-rating "max-length" max-length }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec random-joke-api search-jokes-api-200-response-jokes-inner-spec
  "Random Joke API
  This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\"."
  ([] (random-joke-api nil))
  ([optional-params any?]
   (let [res (:data (random-joke-api-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-jokes-api-200-response-jokes-inner-spec res st/string-transformer)
        res))))


(defn-spec random-meme-api-with-http-info any?
  "Random Meme API
  Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter."
  ([] (random-meme-api-with-http-info nil))
  ([{:keys [keywords keywords-in-image media-type min-rating max-age-days]} (s/map-of keyword? any?)]
   (call-api "/retrieve-random-meme" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"keywords" keywords "keywords-in-image" keywords-in-image "media-type" media-type "min-rating" min-rating "max-age-days" max-age-days }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec random-meme-api random-meme-api-200-response-spec
  "Random Meme API
  Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter."
  ([] (random-meme-api nil))
  ([optional-params any?]
   (let [res (:data (random-meme-api-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode random-meme-api-200-response-spec res st/string-transformer)
        res))))


(defn-spec search-gifs-api-with-http-info any?
  "Search Gifs API
  Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif."
  ([query string?, ] (search-gifs-api-with-http-info query nil))
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

(defn-spec search-gifs-api search-gifs-api-200-response-spec
  "Search Gifs API
  Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif."
  ([query string?, ] (search-gifs-api query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-gifs-api-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-gifs-api-200-response-spec res st/string-transformer)
        res))))


(defn-spec search-jokes-api-with-http-info any?
  "Search Jokes API
  With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes."
  ([] (search-jokes-api-with-http-info nil))
  ([{:keys [keywords include-tags exclude-tags min-rating max-length offset number]} (s/map-of keyword? any?)]
   (call-api "/search-jokes" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"keywords" keywords "include-tags" include-tags "exclude-tags" exclude-tags "min-rating" min-rating "max-length" max-length "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-jokes-api search-jokes-api-200-response-spec
  "Search Jokes API
  With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes."
  ([] (search-jokes-api nil))
  ([optional-params any?]
   (let [res (:data (search-jokes-api-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-jokes-api-200-response-spec res st/string-transformer)
        res))))


(defn-spec search-memes-api-with-http-info any?
  "Search Memes API
  Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You'll surely find something funny."
  ([] (search-memes-api-with-http-info nil))
  ([{:keys [keywords keywords-in-image media-type min-rating max-age-days offset number]} (s/map-of keyword? any?)]
   (call-api "/search-memes" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"keywords" keywords "keywords-in-image" keywords-in-image "media-type" media-type "min-rating" min-rating "max-age-days" max-age-days "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-memes-api search-memes-api-200-response-spec
  "Search Memes API
  Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You'll surely find something funny."
  ([] (search-memes-api nil))
  ([optional-params any?]
   (let [res (:data (search-memes-api-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-memes-api-200-response-spec res st/string-transformer)
        res))))


