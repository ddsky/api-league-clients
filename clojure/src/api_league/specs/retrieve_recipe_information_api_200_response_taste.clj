(ns api-league.specs.retrieve-recipe-information-api-200-response-taste
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-api-200-response-taste-data
  {
   (ds/opt :fattiness) float?
   (ds/opt :spiciness) int?
   (ds/opt :saltiness) int?
   (ds/opt :bitterness) float?
   (ds/opt :savoriness) float?
   (ds/opt :sweetness) float?
   (ds/opt :sourness) float?
   })

(def retrieve-recipe-information-api-200-response-taste-spec
  (ds/spec
    {:name ::retrieve-recipe-information-api-200-response-taste
     :spec retrieve-recipe-information-api-200-response-taste-data}))
