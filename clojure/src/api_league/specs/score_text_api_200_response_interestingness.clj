(ns api-league.specs.score-text-api-200-response-interestingness
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.score-text-api-200-response-skimmability-mainscores :refer :all]
            [api-league.specs.score-text-api-200-response-interestingness-subscores :refer :all]
            )
  (:import (java.io File)))


(def score-text-api-200-response-interestingness-data
  {
   (ds/opt :mainscores) score-text-api-200-response-skimmability-mainscores-spec
   (ds/opt :subscores) score-text-api-200-response-interestingness-subscores-spec
   })

(def score-text-api-200-response-interestingness-spec
  (ds/spec
    {:name ::score-text-api-200-response-interestingness
     :spec score-text-api-200-response-interestingness-data}))
