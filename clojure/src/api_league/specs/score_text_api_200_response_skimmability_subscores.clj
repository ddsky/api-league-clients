(ns api-league.specs.score-text-api-200-response-skimmability-subscores
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def score-text-api-200-response-skimmability-subscores-data
  {
   (ds/opt :highlighted_word_ratio_score) (s/coll-of float?)
   (ds/opt :bullet_point_ratio_score) (s/coll-of float?)
   (ds/opt :paragraph_headline_ratio_score) (s/coll-of float?)
   (ds/opt :image_score) (s/coll-of float?)
   (ds/opt :video_score) (s/coll-of float?)
   (ds/opt :paragraph_score) (s/coll-of float?)
   })

(def score-text-api-200-response-skimmability-subscores-spec
  (ds/spec
    {:name ::score-text-api-200-response-skimmability-subscores
     :spec score-text-api-200-response-skimmability-subscores-data}))
