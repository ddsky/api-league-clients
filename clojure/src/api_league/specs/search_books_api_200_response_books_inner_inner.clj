(ns api-league.specs.search-books-api-200-response-books-inner-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-books-api-200-response-books-inner-inner-data
  {
   (ds/opt :title) string?
   (ds/opt :image) string?
   (ds/opt :id) int?
   })

(def search-books-api-200-response-books-inner-inner-spec
  (ds/spec
    {:name ::search-books-api-200-response-books-inner-inner
     :spec search-books-api-200-response-books-inner-inner-data}))
