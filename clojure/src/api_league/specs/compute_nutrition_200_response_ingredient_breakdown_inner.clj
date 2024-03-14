(ns api-league.specs.compute-nutrition-200-response-ingredient-breakdown-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.compute-nutrition-200-response-ingredient-breakdown-inner-nutrients-inner :refer :all]
            )
  (:import (java.io File)))


(def compute-nutrition-200-response-ingredient-breakdown-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :amount) int?
   (ds/opt :unit) string?
   (ds/opt :id) int?
   (ds/opt :nutrients) (s/coll-of compute-nutrition-200-response-ingredient-breakdown-inner-nutrients-inner-spec)
   })

(def compute-nutrition-200-response-ingredient-breakdown-inner-spec
  (ds/spec
    {:name ::compute-nutrition-200-response-ingredient-breakdown-inner
     :spec compute-nutrition-200-response-ingredient-breakdown-inner-data}))
