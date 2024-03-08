(ns api-league.specs.score-text-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.score-text-200-response-readability :refer :all]
            [api-league.specs.score-text-200-response-skimmability :refer :all]
            [api-league.specs.score-text-200-response-interestingness :refer :all]
            [api-league.specs.score-text-200-response-style :refer :all]
            )
  (:import (java.io File)))


(def score-text-200-response-data
  {
   (ds/opt :number_of_words) int?
   (ds/opt :number_of_sentences) int?
   (ds/opt :readability) score-text-200-response-readability-spec
   (ds/opt :skimmability) score-text-200-response-skimmability-spec
   (ds/opt :interestingness) score-text-200-response-interestingness-spec
   (ds/opt :style) score-text-200-response-style-spec
   (ds/opt :total_score) float?
   })

(def score-text-200-response-spec
  (ds/spec
    {:name ::score-text-200-response
     :spec score-text-200-response-data}))
