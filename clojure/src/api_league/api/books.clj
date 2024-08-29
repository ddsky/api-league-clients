(ns api-league.api.books
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


(defn-spec find-similar-books-with-http-info any?
  "Find Similar Books
  Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image."
  ([id int?, ] (find-similar-books-with-http-info id nil))
  ([id int?, {:keys [number]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/list-similar-books" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"id" id "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec find-similar-books find-similar-books-200-response-spec
  "Find Similar Books
  Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image."
  ([id int?, ] (find-similar-books id nil))
  ([id int?, optional-params any?]
   (let [res (:data (find-similar-books-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode find-similar-books-200-response-spec res st/string-transformer)
        res))))


(defn-spec search-books-with-http-info any?
  "Search Books
  Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category."
  ([] (search-books-with-http-info nil))
  ([{:keys [query earliest-publish-year latest-publish-year min-rating max-rating genres authors isbn oclc sort sort-direction group-results offset number]} (s/map-of keyword? any?)]
   (call-api "/search-books" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "earliest-publish-year" earliest-publish-year "latest-publish-year" latest-publish-year "min-rating" min-rating "max-rating" max-rating "genres" genres "authors" authors "isbn" isbn "oclc" oclc "sort" sort "sort-direction" sort-direction "group-results" group-results "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-books search-books-200-response-spec
  "Search Books
  Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category."
  ([] (search-books nil))
  ([optional-params any?]
   (let [res (:data (search-books-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-books-200-response-spec res st/string-transformer)
        res))))


