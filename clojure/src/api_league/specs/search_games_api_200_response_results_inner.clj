(ns api-league.specs.search-games-api-200-response-results-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-games-api-200-response-results-inner-rating :refer :all]
            [api-league.specs.search-games-api-200-response-results-inner-platforms-inner :refer :all]
            )
  (:import (java.io File)))


(def search-games-api-200-response-results-inner-data
  {
   (ds/opt :image) string?
   (ds/opt :short_description) string?
   (ds/opt :year) int?
   (ds/opt :link) string?
   (ds/opt :rating) search-games-api-200-response-results-inner-rating-spec
   (ds/opt :adult_only) boolean?
   (ds/opt :screenshots) (s/coll-of string?)
   (ds/opt :platforms) (s/coll-of search-games-api-200-response-results-inner-platforms-inner-spec)
   (ds/opt :micro_trailer) string?
   (ds/opt :name) string?
   (ds/opt :genre) string?
   (ds/opt :id) int?
   (ds/opt :gameplay) string?
   })

(def search-games-api-200-response-results-inner-spec
  (ds/spec
    {:name ::search-games-api-200-response-results-inner
     :spec search-games-api-200-response-results-inner-data}))
