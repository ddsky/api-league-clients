(ns api-league.specs.inline-response-200-19-readability-subscores
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-19-readability-subscores-data
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

(def inline-response-200-19-readability-subscores-spec
  (ds/spec
    {:name ::inline-response-200-19-readability-subscores
     :spec inline-response-200-19-readability-subscores-data}))
