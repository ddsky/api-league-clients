(ns api-league.specs.search-web-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-web-200-response-results-inner :refer :all]
            )
  (:import (java.io File)))


(def search-web-200-response-data
  {
   (ds/opt :results) (s/coll-of search-web-200-response-results-inner-spec)
   })

(def search-web-200-response-spec
  (ds/spec
    {:name ::search-web-200-response
     :spec search-web-200-response-data}))
