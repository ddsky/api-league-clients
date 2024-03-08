(ns api-league.specs.score-text-200-response-skimmability
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.score-text-200-response-skimmability-mainscores :refer :all]
            [api-league.specs.score-text-200-response-skimmability-subscores :refer :all]
            )
  (:import (java.io File)))


(def score-text-200-response-skimmability-data
  {
   (ds/opt :mainscores) score-text-200-response-skimmability-mainscores-spec
   (ds/opt :subscores) score-text-200-response-skimmability-subscores-spec
   })

(def score-text-200-response-skimmability-spec
  (ds/spec
    {:name ::score-text-200-response-skimmability
     :spec score-text-200-response-skimmability-data}))
