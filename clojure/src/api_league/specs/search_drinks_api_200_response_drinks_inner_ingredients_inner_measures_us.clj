(ns api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-us
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-us-data
  {
   (ds/opt :unit_short) string?
   (ds/opt :amount) int?
   (ds/opt :unit_long) string?
   })

(def search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-us-spec
  (ds/spec
    {:name ::search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-us
     :spec search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-us-data}))
