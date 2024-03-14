(ns api-league.specs.compute-nutrition-200-response-ingredient-breakdown-inner-nutrients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def compute-nutrition-200-response-ingredient-breakdown-inner-nutrients-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :percent_of_daily_needs) int?
   (ds/opt :amount) int?
   (ds/opt :unit) string?
   })

(def compute-nutrition-200-response-ingredient-breakdown-inner-nutrients-inner-spec
  (ds/spec
    {:name ::compute-nutrition-200-response-ingredient-breakdown-inner-nutrients-inner
     :spec compute-nutrition-200-response-ingredient-breakdown-inner-nutrients-inner-data}))
