(ns api-league.specs.find-similar-books-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-books-200-response-books-inner-inner :refer :all]
            )
  (:import (java.io File)))


(def find-similar-books-200-response-data
  {
   (ds/opt :similar_books) (s/coll-of search-books-200-response-books-inner-inner-spec)
   })

(def find-similar-books-200-response-spec
  (ds/spec
    {:name ::find-similar-books-200-response
     :spec find-similar-books-200-response-data}))
