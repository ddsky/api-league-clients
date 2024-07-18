(ns api-league.specs.search-drinks-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-drinks-200-response-drinks-inner :refer :all]
            )
  (:import (java.io File)))


(def search-drinks-200-response-data
  {
   (ds/opt :offset) int?
   (ds/opt :number) int?
   (ds/opt :drinks) (s/coll-of search-drinks-200-response-drinks-inner-spec)
   (ds/opt :total_results) int?
   })

(def search-drinks-200-response-spec
  (ds/spec
    {:name ::search-drinks-200-response
     :spec search-drinks-200-response-data}))
