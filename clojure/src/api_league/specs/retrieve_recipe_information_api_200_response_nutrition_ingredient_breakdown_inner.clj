(ns api-league.specs.retrieve-recipe-information-api-200-response-nutrition-ingredient-breakdown-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-nutrients-inner :refer :all]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-api-200-response-nutrition-ingredient-breakdown-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :amount) float?
   (ds/opt :unit) string?
   (ds/opt :id) int?
   (ds/opt :nutrients) (s/coll-of search-drinks-api-200-response-drinks-inner-nutrition-nutrients-inner-spec)
   })

(def retrieve-recipe-information-api-200-response-nutrition-ingredient-breakdown-inner-spec
  (ds/spec
    {:name ::retrieve-recipe-information-api-200-response-nutrition-ingredient-breakdown-inner
     :spec retrieve-recipe-information-api-200-response-nutrition-ingredient-breakdown-inner-data}))
