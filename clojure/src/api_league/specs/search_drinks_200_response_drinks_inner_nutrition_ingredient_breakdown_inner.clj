(ns api-league.specs.search-drinks-200-response-drinks-inner-nutrition-ingredient-breakdown-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition-ingredient-breakdown-inner-nutrients-inner :refer :all]
            )
  (:import (java.io File)))


(def search-drinks-200-response-drinks-inner-nutrition-ingredient-breakdown-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :amount) int?
   (ds/opt :unit) string?
   (ds/opt :id) int?
   (ds/opt :nutrients) (s/coll-of search-drinks-200-response-drinks-inner-nutrition-ingredient-breakdown-inner-nutrients-inner-spec)
   })

(def search-drinks-200-response-drinks-inner-nutrition-ingredient-breakdown-inner-spec
  (ds/spec
    {:name ::search-drinks-200-response-drinks-inner-nutrition-ingredient-breakdown-inner
     :spec search-drinks-200-response-drinks-inner-nutrition-ingredient-breakdown-inner-data}))
