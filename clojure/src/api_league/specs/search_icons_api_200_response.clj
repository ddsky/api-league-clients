(ns api-league.specs.search-icons-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-icons-api-200-response-icons-inner :refer :all]
            )
  (:import (java.io File)))


(def search-icons-api-200-response-data
  {
   (ds/opt :icons) (s/coll-of search-icons-api-200-response-icons-inner-spec)
   })

(def search-icons-api-200-response-spec
  (ds/spec
    {:name ::search-icons-api-200-response
     :spec search-icons-api-200-response-data}))
