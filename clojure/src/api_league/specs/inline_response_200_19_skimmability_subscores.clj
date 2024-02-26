(ns api-league.specs.inline-response-200-19-skimmability-subscores
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-19-skimmability-subscores-data
  {
   (ds/opt :bullet_point_ratio_score) (s/coll-of int?)
   (ds/opt :image_score) (s/coll-of int?)
   (ds/opt :highlighted_word_ratio_score) (s/coll-of int?)
   (ds/opt :video_score) (s/coll-of int?)
   (ds/opt :paragraph_score) (s/coll-of int?)
   (ds/opt :paragraph_headline_ratio_score) (s/coll-of int?)
   })

(def inline-response-200-19-skimmability-subscores-spec
  (ds/spec
    {:name ::inline-response-200-19-skimmability-subscores
     :spec inline-response-200-19-skimmability-subscores-data}))
