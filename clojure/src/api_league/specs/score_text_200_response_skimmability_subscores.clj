(ns api-league.specs.score-text-200-response-skimmability-subscores
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def score-text-200-response-skimmability-subscores-data
  {
   (ds/opt :bullet_point_ratio_score) (s/coll-of int?)
   (ds/opt :image_score) (s/coll-of int?)
   (ds/opt :highlighted_word_ratio_score) (s/coll-of int?)
   (ds/opt :video_score) (s/coll-of int?)
   (ds/opt :paragraph_score) (s/coll-of int?)
   (ds/opt :paragraph_headline_ratio_score) (s/coll-of int?)
   })

(def score-text-200-response-skimmability-subscores-spec
  (ds/spec
    {:name ::score-text-200-response-skimmability-subscores
     :spec score-text-200-response-skimmability-subscores-data}))
