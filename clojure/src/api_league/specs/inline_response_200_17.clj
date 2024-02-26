(ns api-league.specs.inline-response-200-17
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-17-data
  {
   (ds/opt :language) string?
   (ds/opt :confidence) float?
   })

(def inline-response-200-17-spec
  (ds/spec
    {:name ::inline-response-200-17
     :spec inline-response-200-17-data}))
