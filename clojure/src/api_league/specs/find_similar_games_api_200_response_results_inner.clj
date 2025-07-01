(ns api-league.specs.find-similar-games-api-200-response-results-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-games-api-200-response-results-inner-rating :refer :all]
            )
  (:import (java.io File)))


(def find-similar-games-api-200-response-results-inner-data
  {
   (ds/opt :image) string?
   (ds/opt :short_description) string?
   (ds/opt :micro_trailer) string?
   (ds/opt :year) int?
   (ds/opt :name) string?
   (ds/opt :genre) string?
   (ds/opt :link) string?
   (ds/opt :rating) search-games-api-200-response-results-inner-rating-spec
   (ds/opt :id) int?
   (ds/opt :adult_only) boolean?
   (ds/opt :screenshots) (s/coll-of string?)
   (ds/opt :gameplay) string?
   })

(def find-similar-games-api-200-response-results-inner-spec
  (ds/spec
    {:name ::find-similar-games-api-200-response-results-inner
     :spec find-similar-games-api-200-response-results-inner-data}))
