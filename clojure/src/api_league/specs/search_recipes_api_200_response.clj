(ns api-league.specs.search-recipes-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-recipes-api-200-response-recipes-inner :refer :all]
            )
  (:import (java.io File)))


(def search-recipes-api-200-response-data
  {
   (ds/opt :offset) int?
   (ds/opt :number) int?
   (ds/opt :recipes) (s/coll-of search-recipes-api-200-response-recipes-inner-spec)
   (ds/opt :total_results) int?
   })

(def search-recipes-api-200-response-spec
  (ds/spec
    {:name ::search-recipes-api-200-response
     :spec search-recipes-api-200-response-data}))
