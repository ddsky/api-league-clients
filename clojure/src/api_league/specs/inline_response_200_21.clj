(ns api-league.specs.inline-response-200-21
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.inline-response-200-21-dates :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-21-data
  {
   (ds/opt :dates) (s/coll-of inline-response-200-21-dates-spec)
   })

(def inline-response-200-21-spec
  (ds/spec
    {:name ::inline-response-200-21
     :spec inline-response-200-21-data}))
