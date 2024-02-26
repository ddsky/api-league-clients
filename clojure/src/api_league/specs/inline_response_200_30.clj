(ns api-league.specs.inline-response-200-30
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-30-data
  {
   (ds/opt :target_amount) float?
   (ds/opt :target_unit) string?
   })

(def inline-response-200-30-spec
  (ds/spec
    {:name ::inline-response-200-30
     :spec inline-response-200-30-data}))
