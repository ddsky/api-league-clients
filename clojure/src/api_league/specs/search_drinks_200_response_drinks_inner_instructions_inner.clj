(ns api-league.specs.search-drinks-200-response-drinks-inner-instructions-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-drinks-200-response-drinks-inner-instructions-inner-steps-inner :refer :all]
            )
  (:import (java.io File)))


(def search-drinks-200-response-drinks-inner-instructions-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :steps) (s/coll-of search-drinks-200-response-drinks-inner-instructions-inner-steps-inner-spec)
   })

(def search-drinks-200-response-drinks-inner-instructions-inner-spec
  (ds/spec
    {:name ::search-drinks-200-response-drinks-inner-instructions-inner
     :spec search-drinks-200-response-drinks-inner-instructions-inner-data}))
