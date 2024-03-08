(ns api-league.specs.search-books-200-response-books-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-books-200-response-books-inner-data
  {
   (ds/opt :title) string?
   (ds/opt :image) string?
   (ds/opt :id) int?
   })

(def search-books-200-response-books-inner-spec
  (ds/spec
    {:name ::search-books-200-response-books-inner
     :spec search-books-200-response-books-inner-data}))
