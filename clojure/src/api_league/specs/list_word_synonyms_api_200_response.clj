(ns api-league.specs.list-word-synonyms-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def list-word-synonyms-api-200-response-data
  {
   (ds/opt :synonyms) (s/coll-of string?)
   })

(def list-word-synonyms-api-200-response-spec
  (ds/spec
    {:name ::list-word-synonyms-api-200-response
     :spec list-word-synonyms-api-200-response-data}))
