(ns api-league.specs.pluralize-word-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def pluralize-word-200-response-data
  {
   (ds/opt :original) string?
   (ds/opt :plural) string?
   })

(def pluralize-word-200-response-spec
  (ds/spec
    {:name ::pluralize-word-200-response
     :spec pluralize-word-200-response-data}))
