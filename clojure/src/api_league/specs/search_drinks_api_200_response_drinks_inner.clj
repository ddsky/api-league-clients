(ns api-league.specs.search-drinks-api-200-response-drinks-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-instructions-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-credits :refer :all]
            )
  (:import (java.io File)))


(def search-drinks-api-200-response-drinks-inner-data
  {
   (ds/opt :id) int?
   (ds/opt :title) string?
   (ds/opt :images) (s/coll-of string?)
   (ds/opt :price_per_serving) float?
   (ds/opt :nutrition) search-drinks-api-200-response-drinks-inner-nutrition-spec
   (ds/opt :flavors) (s/coll-of string?)
   (ds/opt :glass_type) string?
   (ds/opt :description) string?
   (ds/opt :cuisines) (s/coll-of string?)
   (ds/opt :ingredients) (s/coll-of search-drinks-api-200-response-drinks-inner-ingredients-inner-spec)
   (ds/opt :instructions) (s/coll-of search-drinks-api-200-response-drinks-inner-instructions-inner-spec)
   (ds/opt :credits) search-drinks-api-200-response-drinks-inner-credits-spec
   })

(def search-drinks-api-200-response-drinks-inner-spec
  (ds/spec
    {:name ::search-drinks-api-200-response-drinks-inner
     :spec search-drinks-api-200-response-drinks-inner-data}))
