(ns api-league.specs.vector-search-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.vector-search-api-200-response-vectors-inner :refer :all]
            )
  (:import (java.io File)))


(def vector-search-api-200-response-data
  {
   (ds/opt :vectors) (s/coll-of vector-search-api-200-response-vectors-inner-spec)
   })

(def vector-search-api-200-response-spec
  (ds/spec
    {:name ::vector-search-api-200-response
     :spec vector-search-api-200-response-data}))
