(ns api-league.specs.retrieve-recipe-information-200-response-dietary-properties
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-200-response-dietary-properties-data
  {
   (ds/opt :low_fodmap) boolean?
   (ds/opt :vegetarian) boolean?
   (ds/opt :vegan) boolean?
   (ds/opt :gluten_free) boolean?
   (ds/opt :dairy_free) boolean?
   (ds/opt :gaps) string?
   (ds/opt :diets) (s/coll-of string?)
   })

(def retrieve-recipe-information-200-response-dietary-properties-spec
  (ds/spec
    {:name ::retrieve-recipe-information-200-response-dietary-properties
     :spec retrieve-recipe-information-200-response-dietary-properties-data}))
