(ns api-league.specs.retrieve-recipe-information-200-response-nutrition-caloric-breakdown
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-200-response-nutrition-caloric-breakdown-data
  {
   (ds/opt :percent_fat) float?
   (ds/opt :percent_carbs) float?
   (ds/opt :percent_protein) float?
   })

(def retrieve-recipe-information-200-response-nutrition-caloric-breakdown-spec
  (ds/spec
    {:name ::retrieve-recipe-information-200-response-nutrition-caloric-breakdown
     :spec retrieve-recipe-information-200-response-nutrition-caloric-breakdown-data}))
