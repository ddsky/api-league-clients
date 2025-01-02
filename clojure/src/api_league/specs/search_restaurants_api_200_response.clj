(ns api-league.specs.search-restaurants-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-restaurants-api-200-response-restaurants-inner :refer :all]
            )
  (:import (java.io File)))


(def search-restaurants-api-200-response-data
  {
   (ds/opt :restaurants) (s/coll-of search-restaurants-api-200-response-restaurants-inner-spec)
   })

(def search-restaurants-api-200-response-spec
  (ds/spec
    {:name ::search-restaurants-api-200-response
     :spec search-restaurants-api-200-response-data}))
