(ns api-league.specs.search-drinks-200-response-drinks-inner-nutrition-nutrients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-drinks-200-response-drinks-inner-nutrition-nutrients-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :percent_of_daily_needs) float?
   (ds/opt :amount) float?
   (ds/opt :unit) string?
   })

(def search-drinks-200-response-drinks-inner-nutrition-nutrients-inner-spec
  (ds/spec
    {:name ::search-drinks-200-response-drinks-inner-nutrition-nutrients-inner
     :spec search-drinks-200-response-drinks-inner-nutrition-nutrients-inner-data}))
