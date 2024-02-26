(ns api-league.specs.inline-response-200-26
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-26-data
  {
   (ds/opt :original) string?
   (ds/opt :plural) string?
   })

(def inline-response-200-26-spec
  (ds/spec
    {:name ::inline-response-200-26
     :spec inline-response-200-26-data}))
