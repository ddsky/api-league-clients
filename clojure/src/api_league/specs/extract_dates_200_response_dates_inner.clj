(ns api-league.specs.extract-dates-200-response-dates-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def extract-dates-200-response-dates-inner-data
  {
   (ds/opt :start_position) int?
   (ds/opt :date) string?
   (ds/opt :normalized_date) float?
   (ds/opt :tag) string?
   (ds/opt :end_position) int?
   })

(def extract-dates-200-response-dates-inner-spec
  (ds/spec
    {:name ::extract-dates-200-response-dates-inner
     :spec extract-dates-200-response-dates-inner-data}))
