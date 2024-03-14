(ns api-league.specs.retrieve-recipe-information-200-response-instructions-inner-steps-inner-ingredients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-200-response-instructions-inner-steps-inner-ingredients-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :image) string?
   (ds/opt :id) int?
   })

(def retrieve-recipe-information-200-response-instructions-inner-steps-inner-ingredients-inner-spec
  (ds/spec
    {:name ::retrieve-recipe-information-200-response-instructions-inner-steps-inner-ingredients-inner
     :spec retrieve-recipe-information-200-response-instructions-inner-steps-inner-ingredients-inner-data}))
