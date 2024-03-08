(ns api-league.specs.score-text-200-response-readability
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.score-text-200-response-readability-mainscores :refer :all]
            [api-league.specs.score-text-200-response-readability-subscores :refer :all]
            )
  (:import (java.io File)))


(def score-text-200-response-readability-data
  {
   (ds/opt :mainscores) score-text-200-response-readability-mainscores-spec
   (ds/opt :subscores) score-text-200-response-readability-subscores-spec
   })

(def score-text-200-response-readability-spec
  (ds/spec
    {:name ::score-text-200-response-readability
     :spec score-text-200-response-readability-data}))
