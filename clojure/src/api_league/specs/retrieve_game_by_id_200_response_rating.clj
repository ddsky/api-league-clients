(ns api-league.specs.retrieve-game-by-id-200-response-rating
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-game-by-id-200-response-rating-data
  {
   (ds/opt :count) int?
   (ds/opt :count_critics) int?
   (ds/opt :mean_players) float?
   (ds/opt :mean_critics) float?
   (ds/opt :mean) float?
   (ds/opt :count_players) int?
   })

(def retrieve-game-by-id-200-response-rating-spec
  (ds/spec
    {:name ::retrieve-game-by-id-200-response-rating
     :spec retrieve-game-by-id-200-response-rating-data}))
