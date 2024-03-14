(ns api-league.specs.retrieve-recipe-information-200-response-nutrition-ingredient-breakdown-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.retrieve-recipe-information-200-response-nutrition-ingredient-breakdown-inner-nutrients-inner :refer :all]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-200-response-nutrition-ingredient-breakdown-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :amount) float?
   (ds/opt :unit) string?
   (ds/opt :id) int?
   (ds/opt :nutrients) (s/coll-of retrieve-recipe-information-200-response-nutrition-ingredient-breakdown-inner-nutrients-inner-spec)
   })

(def retrieve-recipe-information-200-response-nutrition-ingredient-breakdown-inner-spec
  (ds/spec
    {:name ::retrieve-recipe-information-200-response-nutrition-ingredient-breakdown-inner
     :spec retrieve-recipe-information-200-response-nutrition-ingredient-breakdown-inner-data}))
