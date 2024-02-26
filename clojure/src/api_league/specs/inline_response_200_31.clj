(ns api-league.specs.inline-response-200-31
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-31-data
  {
   (ds/opt :value) string?
   })

(def inline-response-200-31-spec
  (ds/spec
    {:name ::inline-response-200-31
     :spec inline-response-200-31-data}))
