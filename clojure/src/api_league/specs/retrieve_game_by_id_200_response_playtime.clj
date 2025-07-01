(ns api-league.specs.retrieve-game-by-id-200-response-playtime
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-game-by-id-200-response-playtime-data
  {
   (ds/opt :percentiles) (s/coll-of int?)
   (ds/opt :min) int?
   (ds/opt :median) int?
   (ds/opt :max) int?
   (ds/opt :mean) float?
   (ds/opt :mentions) int?
   })

(def retrieve-game-by-id-200-response-playtime-spec
  (ds/spec
    {:name ::retrieve-game-by-id-200-response-playtime
     :spec retrieve-game-by-id-200-response-playtime-data}))
