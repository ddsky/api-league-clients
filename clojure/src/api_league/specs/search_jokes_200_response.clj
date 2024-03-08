(ns api-league.specs.search-jokes-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-jokes-200-response-jokes-inner :refer :all]
            )
  (:import (java.io File)))


(def search-jokes-200-response-data
  {
   (ds/opt :jokes) (s/coll-of search-jokes-200-response-jokes-inner-spec)
   (ds/opt :available) int?
   })

(def search-jokes-200-response-spec
  (ds/spec
    {:name ::search-jokes-200-response
     :spec search-jokes-200-response-data}))
