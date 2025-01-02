(ns api-league.specs.score-text-api-200-response-skimmability
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.score-text-api-200-response-skimmability-mainscores :refer :all]
            [api-league.specs.score-text-api-200-response-skimmability-subscores :refer :all]
            )
  (:import (java.io File)))


(def score-text-api-200-response-skimmability-data
  {
   (ds/opt :mainscores) score-text-api-200-response-skimmability-mainscores-spec
   (ds/opt :subscores) score-text-api-200-response-skimmability-subscores-spec
   })

(def score-text-api-200-response-skimmability-spec
  (ds/spec
    {:name ::score-text-api-200-response-skimmability
     :spec score-text-api-200-response-skimmability-data}))
