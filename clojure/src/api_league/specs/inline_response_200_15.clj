(ns api-league.specs.inline-response-200-15
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.inline-response-200-15-results :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-15-data
  {
   (ds/opt :results) (s/coll-of inline-response-200-15-results-spec)
   })

(def inline-response-200-15-spec
  (ds/spec
    {:name ::inline-response-200-15
     :spec inline-response-200-15-data}))
