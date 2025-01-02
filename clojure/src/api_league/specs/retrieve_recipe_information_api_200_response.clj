(ns api-league.specs.retrieve-recipe-information-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.retrieve-recipe-information-api-200-response-dietary-properties :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-times :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-nutrition :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-taste :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-ingredients-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-instructions-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-credits :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-scores :refer :all]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-api-200-response-data
  {
   (ds/opt :id) int?
   (ds/opt :title) string?
   (ds/opt :servings) int?
   (ds/opt :images) (s/coll-of string?)
   (ds/opt :dietary_properties) retrieve-recipe-information-api-200-response-dietary-properties-spec
   (ds/opt :price_per_serving) float?
   (ds/opt :times) retrieve-recipe-information-api-200-response-times-spec
   (ds/opt :nutrition) retrieve-recipe-information-api-200-response-nutrition-spec
   (ds/opt :taste) retrieve-recipe-information-api-200-response-taste-spec
   (ds/opt :cuisines) (s/coll-of string?)
   (ds/opt :meal_types) (s/coll-of string?)
   (ds/opt :occasions) (s/coll-of string?)
   (ds/opt :ingredients) (s/coll-of retrieve-recipe-information-api-200-response-ingredients-inner-spec)
   (ds/opt :instructions) (s/coll-of retrieve-recipe-information-api-200-response-instructions-inner-spec)
   (ds/opt :credits) retrieve-recipe-information-api-200-response-credits-spec
   (ds/opt :scores) retrieve-recipe-information-api-200-response-scores-spec
   })

(def retrieve-recipe-information-api-200-response-spec
  (ds/spec
    {:name ::retrieve-recipe-information-api-200-response
     :spec retrieve-recipe-information-api-200-response-data}))
