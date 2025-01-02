(ns api-league.specs.search-drinks-api-200-response-drinks-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-instructions-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-credits :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner :refer :all]
            )
  (:import (java.io File)))


(def search-drinks-api-200-response-drinks-inner-data
  {
   (ds/opt :flavors) (s/coll-of string?)
   (ds/opt :instructions) (s/coll-of search-drinks-api-200-response-drinks-inner-instructions-inner-spec)
   (ds/opt :images) (s/coll-of string?)
   (ds/opt :nutrition) search-drinks-api-200-response-drinks-inner-nutrition-spec
   (ds/opt :glass_type) string?
   (ds/opt :credits) search-drinks-api-200-response-drinks-inner-credits-spec
   (ds/opt :price_per_serving) float?
   (ds/opt :description) string?
   (ds/opt :ingredients) (s/coll-of search-drinks-api-200-response-drinks-inner-ingredients-inner-spec)
   (ds/opt :id) int?
   (ds/opt :title) string?
   (ds/opt :cuisines) (s/coll-of string?)
   })

(def search-drinks-api-200-response-drinks-inner-spec
  (ds/spec
    {:name ::search-drinks-api-200-response-drinks-inner
     :spec search-drinks-api-200-response-drinks-inner-data}))
