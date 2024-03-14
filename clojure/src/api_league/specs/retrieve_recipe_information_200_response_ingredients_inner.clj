(ns api-league.specs.retrieve-recipe-information-200-response-ingredients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.retrieve-recipe-information-200-response-ingredients-inner-measures :refer :all]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-200-response-ingredients-inner-data
  {
   (ds/opt :image) string?
   (ds/opt :name_clean) string?
   (ds/opt :amount) float?
   (ds/opt :unit) string?
   (ds/opt :measures) retrieve-recipe-information-200-response-ingredients-inner-measures-spec
   (ds/opt :original) string?
   (ds/opt :meta) (s/coll-of string?)
   (ds/opt :original_name) string?
   (ds/opt :name) string?
   (ds/opt :id) int?
   (ds/opt :aisle) string?
   (ds/opt :consistency) string?
   })

(def retrieve-recipe-information-200-response-ingredients-inner-spec
  (ds/spec
    {:name ::retrieve-recipe-information-200-response-ingredients-inner
     :spec retrieve-recipe-information-200-response-ingredients-inner-data}))
