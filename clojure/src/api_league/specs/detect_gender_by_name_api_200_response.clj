(ns api-league.specs.detect-gender-by-name-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def detect-gender-by-name-api-200-response-data
  {
   (ds/opt :name) string?
   (ds/opt :probability_male) float?
   (ds/opt :probability_female) float?
   (ds/opt :popularity) float?
   })

(def detect-gender-by-name-api-200-response-spec
  (ds/spec
    {:name ::detect-gender-by-name-api-200-response
     :spec detect-gender-by-name-api-200-response-data}))
