(ns api-league.specs.search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner :refer :all]
            )
  (:import (java.io File)))


(def search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner-data
  {
   (ds/opt :number) int?
   (ds/opt :step) string?
   (ds/opt :ingredients) (s/coll-of search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner-spec)
   (ds/opt :equipment) (s/coll-of string?)
   })

(def search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner-spec
  (ds/spec
    {:name ::search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner
     :spec search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner-data}))
