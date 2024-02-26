(ns api-league.specs.inline-response-200
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.inline-response-200-books :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-data
  {
   (ds/opt :available) int?
   (ds/opt :number) int?
   (ds/opt :offset) int?
   (ds/opt :books) (s/coll-of inline-response-200-books-spec)
   })

(def inline-response-200-spec
  (ds/spec
    {:name ::inline-response-200
     :spec inline-response-200-data}))
