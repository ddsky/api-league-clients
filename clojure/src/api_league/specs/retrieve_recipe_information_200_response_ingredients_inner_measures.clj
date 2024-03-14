(ns api-league.specs.retrieve-recipe-information-200-response-ingredients-inner-measures
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.retrieve-recipe-information-200-response-ingredients-inner-measures-metric :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-ingredients-inner-measures-metric :refer :all]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-200-response-ingredients-inner-measures-data
  {
   (ds/opt :metric) retrieve-recipe-information-200-response-ingredients-inner-measures-metric-spec
   (ds/opt :us) retrieve-recipe-information-200-response-ingredients-inner-measures-metric-spec
   })

(def retrieve-recipe-information-200-response-ingredients-inner-measures-spec
  (ds/spec
    {:name ::retrieve-recipe-information-200-response-ingredients-inner-measures
     :spec retrieve-recipe-information-200-response-ingredients-inner-measures-data}))
