(ns api-league.specs.inline-response-200-2
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.inline-response-200-2-news :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-2-data
  {
   (ds/opt :offset) int?
   (ds/opt :number) int?
   (ds/opt :available) int?
   (ds/opt :news) (s/coll-of inline-response-200-2-news-spec)
   })

(def inline-response-200-2-spec
  (ds/spec
    {:name ::inline-response-200-2
     :spec inline-response-200-2-data}))
