(ns api-league.specs.search-drinks-200-response-drinks-inner-ingredients-inner-measures-metric
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-drinks-200-response-drinks-inner-ingredients-inner-measures-metric-data
  {
   (ds/opt :unit_short) string?
   (ds/opt :amount) float?
   (ds/opt :unit_long) string?
   })

(def search-drinks-200-response-drinks-inner-ingredients-inner-measures-metric-spec
  (ds/spec
    {:name ::search-drinks-200-response-drinks-inner-ingredients-inner-measures-metric
     :spec search-drinks-200-response-drinks-inner-ingredients-inner-measures-metric-data}))
