(ns api-league.specs.inline-response-200-21-dates
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-21-dates-data
  {
   (ds/opt :start_position) int?
   (ds/opt :date) string?
   (ds/opt :normalized_date) float?
   (ds/opt :tag) string?
   (ds/opt :end_position) int?
   })

(def inline-response-200-21-dates-spec
  (ds/spec
    {:name ::inline-response-200-21-dates
     :spec inline-response-200-21-dates-data}))
