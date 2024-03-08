(ns api-league.specs.read-key-value-from-store-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def read-key-value-from-store-200-response-data
  {
   (ds/opt :value) string?
   })

(def read-key-value-from-store-200-response-spec
  (ds/spec
    {:name ::read-key-value-from-store-200-response
     :spec read-key-value-from-store-200-response-data}))
