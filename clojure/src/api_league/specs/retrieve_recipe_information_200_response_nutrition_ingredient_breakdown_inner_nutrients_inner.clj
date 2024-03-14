(ns api-league.specs.retrieve-recipe-information-200-response-nutrition-ingredient-breakdown-inner-nutrients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-200-response-nutrition-ingredient-breakdown-inner-nutrients-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :percent_of_daily_needs) float?
   (ds/opt :amount) float?
   (ds/opt :unit) string?
   })

(def retrieve-recipe-information-200-response-nutrition-ingredient-breakdown-inner-nutrients-inner-spec
  (ds/spec
    {:name ::retrieve-recipe-information-200-response-nutrition-ingredient-breakdown-inner-nutrients-inner
     :spec retrieve-recipe-information-200-response-nutrition-ingredient-breakdown-inner-nutrients-inner-data}))
