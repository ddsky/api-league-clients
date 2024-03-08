(ns api-league.specs.score-text-200-response-skimmability-mainscores
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def score-text-200-response-skimmability-mainscores-data
  {
   (ds/opt :total_possible) int?
   (ds/opt :total) float?
   })

(def score-text-200-response-skimmability-mainscores-spec
  (ds/spec
    {:name ::score-text-200-response-skimmability-mainscores
     :spec score-text-200-response-skimmability-mainscores-data}))
