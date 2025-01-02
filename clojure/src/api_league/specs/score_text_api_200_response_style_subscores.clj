(ns api-league.specs.score-text-api-200-response-style-subscores
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def score-text-api-200-response-style-subscores-data
  {
   (ds/opt :abbreviation_score) (s/coll-of int?)
   (ds/opt :style_score) (s/coll-of int?)
   (ds/opt :spelling_score) (s/coll-of int?)
   })

(def score-text-api-200-response-style-subscores-spec
  (ds/spec
    {:name ::score-text-api-200-response-style-subscores
     :spec score-text-api-200-response-style-subscores-data}))
