(ns api-league.specs.art-search-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-books-api-200-response-books-inner-inner :refer :all]
            )
  (:import (java.io File)))


(def art-search-api-200-response-data
  {
   (ds/opt :available) int?
   (ds/opt :number) int?
   (ds/opt :offset) int?
   (ds/opt :artworks) (s/coll-of search-books-api-200-response-books-inner-inner-spec)
   })

(def art-search-api-200-response-spec
  (ds/spec
    {:name ::art-search-api-200-response
     :spec art-search-api-200-response-data}))
