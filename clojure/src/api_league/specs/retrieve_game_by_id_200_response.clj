(ns api-league.specs.retrieve-game-by-id-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.retrieve-game-by-id-200-response-rating :refer :all]
            [api-league.specs.retrieve-game-by-id-200-response-playtime :refer :all]
            [api-league.specs.search-games-api-200-response-results-inner-platforms-inner :refer :all]
            [api-league.specs.search-games-api-200-response-results-inner-platforms-inner :refer :all]
            [api-league.specs.search-games-api-200-response-results-inner-platforms-inner :refer :all]
            [api-league.specs.search-games-api-200-response-results-inner-platforms-inner :refer :all]
            [api-league.specs.retrieve-game-by-id-200-response-offers-inner :refer :all]
            [api-league.specs.retrieve-game-by-id-200-response-official-stores-inner :refer :all]
            )
  (:import (java.io File)))


(def retrieve-game-by-id-200-response-data
  {
   (ds/opt :id) int?
   (ds/opt :name) string?
   (ds/opt :image) string?
   (ds/opt :gameplay) string?
   (ds/opt :link) string?
   (ds/opt :x_url) string?
   (ds/opt :rating) retrieve-game-by-id-200-response-rating-spec
   (ds/opt :description) string?
   (ds/opt :short_description) string?
   (ds/opt :release_date) string?
   (ds/opt :developer) string?
   (ds/opt :playtime) retrieve-game-by-id-200-response-playtime-spec
   (ds/opt :platforms) (s/coll-of search-games-api-200-response-results-inner-platforms-inner-spec)
   (ds/opt :tags) (s/coll-of string?)
   (ds/opt :genres) (s/coll-of search-games-api-200-response-results-inner-platforms-inner-spec)
   (ds/opt :genre) string?
   (ds/opt :themes) (s/coll-of search-games-api-200-response-results-inner-platforms-inner-spec)
   (ds/opt :adult_only) boolean?
   (ds/opt :play_modes) (s/coll-of search-games-api-200-response-results-inner-platforms-inner-spec)
   (ds/opt :screenshots) (s/coll-of string?)
   (ds/opt :videos) (s/coll-of string?)
   (ds/opt :offers) (s/coll-of retrieve-game-by-id-200-response-offers-inner-spec)
   (ds/opt :official_stores) (s/coll-of retrieve-game-by-id-200-response-official-stores-inner-spec)
   (ds/opt :micro_trailer) string?
   })

(def retrieve-game-by-id-200-response-spec
  (ds/spec
    {:name ::retrieve-game-by-id-200-response
     :spec retrieve-game-by-id-200-response-data}))
