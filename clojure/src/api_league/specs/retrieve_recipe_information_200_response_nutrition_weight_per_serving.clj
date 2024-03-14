(ns api-league.specs.retrieve-recipe-information-200-response-nutrition-weight-per-serving
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-200-response-nutrition-weight-per-serving-data
  {
   (ds/opt :amount) int?
   (ds/opt :unit) string?
   })

(def retrieve-recipe-information-200-response-nutrition-weight-per-serving-spec
  (ds/spec
    {:name ::retrieve-recipe-information-200-response-nutrition-weight-per-serving
     :spec retrieve-recipe-information-200-response-nutrition-weight-per-serving-data}))
