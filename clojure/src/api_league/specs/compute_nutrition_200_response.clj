(ns api-league.specs.compute-nutrition-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition-nutrients-inner :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition-flavonoids-inner :refer :all]
            [api-league.specs.search-recipes-200-response-recipes-inner-nutrition-nutrients-inner :refer :all]
            [api-league.specs.compute-nutrition-200-response-ingredient-breakdown-inner :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition-caloric-breakdown :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition-weight-per-serving :refer :all]
            )
  (:import (java.io File)))


(def compute-nutrition-200-response-data
  {
   (ds/opt :nutrients) (s/coll-of search-drinks-200-response-drinks-inner-nutrition-nutrients-inner-spec)
   (ds/opt :properties) (s/coll-of search-drinks-200-response-drinks-inner-nutrition-flavonoids-inner-spec)
   (ds/opt :flavonoids) (s/coll-of search-recipes-200-response-recipes-inner-nutrition-nutrients-inner-spec)
   (ds/opt :ingredient_breakdown) (s/coll-of compute-nutrition-200-response-ingredient-breakdown-inner-spec)
   (ds/opt :caloric_breakdown) search-drinks-200-response-drinks-inner-nutrition-caloric-breakdown-spec
   (ds/opt :weight_per_serving) search-drinks-200-response-drinks-inner-nutrition-weight-per-serving-spec
   })

(def compute-nutrition-200-response-spec
  (ds/spec
    {:name ::compute-nutrition-200-response
     :spec compute-nutrition-200-response-data}))
