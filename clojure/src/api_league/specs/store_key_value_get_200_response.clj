(ns api-league.specs.store-key-value-get-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def store-key-value-get-200-response-data
  {
   (ds/opt :status) string?
   })

(def store-key-value-get-200-response-spec
  (ds/spec
    {:name ::store-key-value-get-200-response
     :spec store-key-value-get-200-response-data}))
