(ns api-league.specs.inline-response-200-4
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.inline-response-200-4-jokes :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-4-data
  {
   (ds/opt :jokes) (s/coll-of inline-response-200-4-jokes-spec)
   (ds/opt :available) int?
   })

(def inline-response-200-4-spec
  (ds/spec
    {:name ::inline-response-200-4
     :spec inline-response-200-4-data}))
