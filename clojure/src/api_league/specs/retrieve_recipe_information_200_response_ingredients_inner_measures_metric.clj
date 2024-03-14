(ns api-league.specs.retrieve-recipe-information-200-response-ingredients-inner-measures-metric
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-200-response-ingredients-inner-measures-metric-data
  {
   (ds/opt :unit_short) string?
   (ds/opt :amount) float?
   (ds/opt :unit_long) string?
   })

(def retrieve-recipe-information-200-response-ingredients-inner-measures-metric-spec
  (ds/spec
    {:name ::retrieve-recipe-information-200-response-ingredients-inner-measures-metric
     :spec retrieve-recipe-information-200-response-ingredients-inner-measures-metric-data}))
