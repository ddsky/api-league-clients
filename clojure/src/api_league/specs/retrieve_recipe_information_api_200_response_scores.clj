(ns api-league.specs.retrieve-recipe-information-api-200-response-scores
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-api-200-response-scores-data
  {
   (ds/opt :meta_score) float?
   (ds/opt :weight_watcher_smart_points) int?
   (ds/opt :health_score) int?
   })

(def retrieve-recipe-information-api-200-response-scores-spec
  (ds/spec
    {:name ::retrieve-recipe-information-api-200-response-scores
     :spec retrieve-recipe-information-api-200-response-scores-data}))
