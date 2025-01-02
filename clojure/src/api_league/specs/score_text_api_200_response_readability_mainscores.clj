(ns api-league.specs.score-text-api-200-response-readability-mainscores
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def score-text-api-200-response-readability-mainscores-data
  {
   (ds/opt :total_possible) int?
   (ds/opt :total) int?
   })

(def score-text-api-200-response-readability-mainscores-spec
  (ds/spec
    {:name ::score-text-api-200-response-readability-mainscores
     :spec score-text-api-200-response-readability-mainscores-data}))
