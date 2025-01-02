(ns api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-caloric-breakdown
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-drinks-api-200-response-drinks-inner-nutrition-caloric-breakdown-data
  {
   (ds/opt :percent_fat) float?
   (ds/opt :percent_carbs) float?
   (ds/opt :percent_protein) float?
   })

(def search-drinks-api-200-response-drinks-inner-nutrition-caloric-breakdown-spec
  (ds/spec
    {:name ::search-drinks-api-200-response-drinks-inner-nutrition-caloric-breakdown
     :spec search-drinks-api-200-response-drinks-inner-nutrition-caloric-breakdown-data}))
