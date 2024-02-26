(ns api-league.specs.inline-response-200-19
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.inline-response-200-19-readability :refer :all]
            [api-league.specs.inline-response-200-19-skimmability :refer :all]
            [api-league.specs.inline-response-200-19-interestingness :refer :all]
            [api-league.specs.inline-response-200-19-style :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-19-data
  {
   (ds/opt :number_of_words) int?
   (ds/opt :number_of_sentences) int?
   (ds/opt :readability) inline-response-200-19-readability-spec
   (ds/opt :skimmability) inline-response-200-19-skimmability-spec
   (ds/opt :interestingness) inline-response-200-19-interestingness-spec
   (ds/opt :style) inline-response-200-19-style-spec
   (ds/opt :total_score) float?
   })

(def inline-response-200-19-spec
  (ds/spec
    {:name ::inline-response-200-19
     :spec inline-response-200-19-data}))
