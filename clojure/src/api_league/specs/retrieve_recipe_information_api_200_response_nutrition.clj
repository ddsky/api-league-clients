(ns api-league.specs.retrieve-recipe-information-api-200-response-nutrition
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-weight-per-serving :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-caloric-breakdown :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-flavonoids-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-nutrition-ingredient-breakdown-inner :refer :all]
            [api-league.specs.search-recipes-api-200-response-recipes-inner-nutrition-nutrients-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-nutrients-inner :refer :all]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-api-200-response-nutrition-data
  {
   (ds/opt :weight_per_serving) search-drinks-api-200-response-drinks-inner-nutrition-weight-per-serving-spec
   (ds/opt :caloric_breakdown) search-drinks-api-200-response-drinks-inner-nutrition-caloric-breakdown-spec
   (ds/opt :flavonoids) (s/coll-of search-drinks-api-200-response-drinks-inner-nutrition-flavonoids-inner-spec)
   (ds/opt :ingredient_breakdown) (s/coll-of retrieve-recipe-information-api-200-response-nutrition-ingredient-breakdown-inner-spec)
   (ds/opt :properties) (s/coll-of search-recipes-api-200-response-recipes-inner-nutrition-nutrients-inner-spec)
   (ds/opt :nutrients) (s/coll-of search-drinks-api-200-response-drinks-inner-nutrition-nutrients-inner-spec)
   })

(def retrieve-recipe-information-api-200-response-nutrition-spec
  (ds/spec
    {:name ::retrieve-recipe-information-api-200-response-nutrition
     :spec retrieve-recipe-information-api-200-response-nutrition-data}))
