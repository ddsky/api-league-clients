(ns api-league.specs.retrieve-recipe-information-200-response-instructions-inner-steps-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-drinks-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner :refer :all]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-200-response-instructions-inner-steps-inner-data
  {
   (ds/opt :number) int?
   (ds/opt :ingredients) (s/coll-of search-drinks-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner-spec)
   (ds/opt :equipment) (s/coll-of search-drinks-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner-spec)
   (ds/opt :step) string?
   })

(def retrieve-recipe-information-200-response-instructions-inner-steps-inner-spec
  (ds/spec
    {:name ::retrieve-recipe-information-200-response-instructions-inner-steps-inner
     :spec retrieve-recipe-information-200-response-instructions-inner-steps-inner-data}))
