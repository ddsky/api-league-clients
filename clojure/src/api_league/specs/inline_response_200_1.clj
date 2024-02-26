(ns api-league.specs.inline-response-200-1
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.inline-response-200-books :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-1-data
  {
   (ds/opt :similar_books) (s/coll-of inline-response-200-books-spec)
   })

(def inline-response-200-1-spec
  (ds/spec
    {:name ::inline-response-200-1
     :spec inline-response-200-1-data}))
