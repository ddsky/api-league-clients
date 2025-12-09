(ns api-league.specs.search-games-api-200-response-results-inner-rating
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-games-api-200-response-results-inner-rating-data
  {
   (ds/opt :mean) float?
   (ds/opt :count) int?
   })

(def search-games-api-200-response-results-inner-rating-spec
  (ds/spec
    {:name ::search-games-api-200-response-results-inner-rating
     :spec search-games-api-200-response-results-inner-rating-data}))
