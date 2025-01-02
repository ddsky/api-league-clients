(ns api-league.specs.search-drinks-api-200-response-drinks-inner-instructions-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner :refer :all]
            )
  (:import (java.io File)))


(def search-drinks-api-200-response-drinks-inner-instructions-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :steps) (s/coll-of search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner-spec)
   })

(def search-drinks-api-200-response-drinks-inner-instructions-inner-spec
  (ds/spec
    {:name ::search-drinks-api-200-response-drinks-inner-instructions-inner
     :spec search-drinks-api-200-response-drinks-inner-instructions-inner-data}))
