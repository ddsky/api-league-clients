(ns api-league.specs.score-text-200-response-readability-subscores
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def score-text-200-response-readability-subscores-data
  {
   (ds/opt :reading_time_seconds) int?
   (ds/opt :forcast) float?
   (ds/opt :flesch) float?
   (ds/opt :smog) float?
   (ds/opt :ari) float?
   (ds/opt :lix) float?
   (ds/opt :coleman_liau) float?
   (ds/opt :kincaid) float?
   (ds/opt :fog) float?
   })

(def score-text-200-response-readability-subscores-spec
  (ds/spec
    {:name ::score-text-200-response-readability-subscores
     :spec score-text-200-response-readability-subscores-data}))
