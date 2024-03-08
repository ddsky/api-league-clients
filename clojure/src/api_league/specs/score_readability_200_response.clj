(ns api-league.specs.score-readability-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.score-text-200-response-readability :refer :all]
            )
  (:import (java.io File)))


(def score-readability-200-response-data
  {
   (ds/opt :readability) score-text-200-response-readability-spec
   })

(def score-readability-200-response-spec
  (ds/spec
    {:name ::score-readability-200-response
     :spec score-readability-200-response-data}))
