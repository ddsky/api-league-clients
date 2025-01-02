(ns api-league.specs.score-readability-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.score-text-api-200-response-readability :refer :all]
            )
  (:import (java.io File)))


(def score-readability-api-200-response-data
  {
   (ds/opt :readability) score-text-api-200-response-readability-spec
   })

(def score-readability-api-200-response-spec
  (ds/spec
    {:name ::score-readability-api-200-response
     :spec score-readability-api-200-response-data}))
