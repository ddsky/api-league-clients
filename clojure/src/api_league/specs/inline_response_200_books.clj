(ns api-league.specs.inline-response-200-books
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-books-data
  {
   (ds/opt :title) string?
   (ds/opt :image) string?
   (ds/opt :id) int?
   })

(def inline-response-200-books-spec
  (ds/spec
    {:name ::inline-response-200-books
     :spec inline-response-200-books-data}))
