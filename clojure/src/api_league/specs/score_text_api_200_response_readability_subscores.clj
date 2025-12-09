(ns api-league.specs.score-text-api-200-response-readability-subscores
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def score-text-api-200-response-readability-subscores-data
  {
   (ds/opt :forcast) float?
   (ds/opt :flesch) float?
   (ds/opt :smog) float?
   (ds/opt :ari) float?
   (ds/opt :lix) float?
   (ds/opt :kincaid) float?
   (ds/opt :fog) float?
   (ds/opt :coleman_liau) float?
   (ds/opt :reading_time_seconds) int?
   })

(def score-text-api-200-response-readability-subscores-spec
  (ds/spec
    {:name ::score-text-api-200-response-readability-subscores
     :spec score-text-api-200-response-readability-subscores-data}))
