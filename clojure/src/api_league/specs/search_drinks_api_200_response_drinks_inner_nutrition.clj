(ns api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-nutrients-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-properties-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-properties-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-ingredient-breakdown-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-caloric-breakdown :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-weight-per-serving :refer :all]
            )
  (:import (java.io File)))


(def search-drinks-api-200-response-drinks-inner-nutrition-data
  {
   (ds/opt :nutrients) (s/coll-of search-drinks-api-200-response-drinks-inner-nutrition-nutrients-inner-spec)
   (ds/opt :properties) (s/coll-of search-drinks-api-200-response-drinks-inner-nutrition-properties-inner-spec)
   (ds/opt :flavonoids) (s/coll-of search-drinks-api-200-response-drinks-inner-nutrition-properties-inner-spec)
   (ds/opt :ingredient_breakdown) (s/coll-of search-drinks-api-200-response-drinks-inner-nutrition-ingredient-breakdown-inner-spec)
   (ds/opt :caloric_breakdown) search-drinks-api-200-response-drinks-inner-nutrition-caloric-breakdown-spec
   (ds/opt :weight_per_serving) search-drinks-api-200-response-drinks-inner-nutrition-weight-per-serving-spec
   })

(def search-drinks-api-200-response-drinks-inner-nutrition-spec
  (ds/spec
    {:name ::search-drinks-api-200-response-drinks-inner-nutrition
     :spec search-drinks-api-200-response-drinks-inner-nutrition-data}))
