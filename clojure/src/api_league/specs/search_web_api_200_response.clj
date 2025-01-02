(ns api-league.specs.search-web-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-web-api-200-response-results-inner :refer :all]
            )
  (:import (java.io File)))


(def search-web-api-200-response-data
  {
   (ds/opt :results) (s/coll-of search-web-api-200-response-results-inner-spec)
   })

(def search-web-api-200-response-spec
  (ds/spec
    {:name ::search-web-api-200-response
     :spec search-web-api-200-response-data}))
