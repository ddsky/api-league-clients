(ns api-league.specs.convert-units-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def convert-units-200-response-data
  {
   (ds/opt :target_amount) float?
   (ds/opt :target_unit) string?
   })

(def convert-units-200-response-spec
  (ds/spec
    {:name ::convert-units-200-response
     :spec convert-units-200-response-data}))
