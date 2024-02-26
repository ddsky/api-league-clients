(ns api-league.specs.inline-response-200-22
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-22-data
  {
   (ds/opt :synonyms) (s/coll-of string?)
   })

(def inline-response-200-22-spec
  (ds/spec
    {:name ::inline-response-200-22
     :spec inline-response-200-22-data}))
