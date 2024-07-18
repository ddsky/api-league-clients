(ns api-league.specs.search-drinks-200-response-drinks-inner-instructions-inner-steps-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-drinks-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner :refer :all]
            )
  (:import (java.io File)))


(def search-drinks-200-response-drinks-inner-instructions-inner-steps-inner-data
  {
   (ds/opt :number) int?
   (ds/opt :ingredients) (s/coll-of search-drinks-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner-spec)
   (ds/opt :equipment) (s/coll-of string?)
   (ds/opt :step) string?
   })

(def search-drinks-200-response-drinks-inner-instructions-inner-steps-inner-spec
  (ds/spec
    {:name ::search-drinks-200-response-drinks-inner-instructions-inner-steps-inner
     :spec search-drinks-200-response-drinks-inner-instructions-inner-steps-inner-data}))
