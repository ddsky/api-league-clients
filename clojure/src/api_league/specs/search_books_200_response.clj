(ns api-league.specs.search-books-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-books-200-response-data
  {
   (ds/opt :total_results) int?
   (ds/opt :number) int?
   (ds/opt :offset) int?
   (ds/opt :books) (s/coll-of (s/coll-of search-books-200-response-books-inner-inner-spec))
   })

(def search-books-200-response-spec
  (ds/spec
    {:name ::search-books-200-response
     :spec search-books-200-response-data}))
