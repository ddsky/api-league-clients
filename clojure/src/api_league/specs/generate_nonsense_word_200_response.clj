(ns api-league.specs.generate-nonsense-word-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def generate-nonsense-word-200-response-data
  {
   (ds/opt :word) string?
   (ds/opt :rating) float?
   })

(def generate-nonsense-word-200-response-spec
  (ds/spec
    {:name ::generate-nonsense-word-200-response
     :spec generate-nonsense-word-200-response-data}))
