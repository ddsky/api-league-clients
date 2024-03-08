(ns api-league.specs.correct-spelling-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def correct-spelling-200-response-data
  {
   (ds/opt :corrected_text) string?
   })

(def correct-spelling-200-response-spec
  (ds/spec
    {:name ::correct-spelling-200-response
     :spec correct-spelling-200-response-data}))
