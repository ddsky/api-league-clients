(ns api-league.specs.correct-spelling-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def correct-spelling-api-200-response-data
  {
   (ds/opt :corrected_text) string?
   })

(def correct-spelling-api-200-response-spec
  (ds/spec
    {:name ::correct-spelling-api-200-response
     :spec correct-spelling-api-200-response-data}))
