(ns api-league.specs.inline-response-200-18-skimmability-mainscores
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-18-skimmability-mainscores-data
  {
   (ds/opt :total_possible) int?
   (ds/opt :total) float?
   })

(def inline-response-200-18-skimmability-mainscores-spec
  (ds/spec
    {:name ::inline-response-200-18-skimmability-mainscores
     :spec inline-response-200-18-skimmability-mainscores-data}))
