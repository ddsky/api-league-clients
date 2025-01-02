(ns api-league.specs.retrieve-page-rank-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-page-rank-api-200-response-data
  {
   (ds/opt :page_rank) float?
   (ds/opt :position) int?
   (ds/opt :percentile) float?
   })

(def retrieve-page-rank-api-200-response-spec
  (ds/spec
    {:name ::retrieve-page-rank-api-200-response
     :spec retrieve-page-rank-api-200-response-data}))
