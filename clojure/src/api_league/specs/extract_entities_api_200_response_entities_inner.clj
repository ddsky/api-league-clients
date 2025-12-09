(ns api-league.specs.extract-entities-api-200-response-entities-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def extract-entities-api-200-response-entities-inner-data
  {
   (ds/opt :type) string?
   (ds/opt :value) string?
   (ds/opt :start_position) int?
   (ds/opt :end_position) int?
   (ds/opt :image) string?
   })

(def extract-entities-api-200-response-entities-inner-spec
  (ds/spec
    {:name ::extract-entities-api-200-response-entities-inner
     :spec extract-entities-api-200-response-entities-inner-data}))
