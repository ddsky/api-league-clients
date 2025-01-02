(ns api-league.specs.score-text-api-200-response-interestingness-subscores
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def score-text-api-200-response-interestingness-subscores-data
  {
   (ds/opt :title_rating_score) (s/coll-of int?)
   (ds/opt :quote_score) (s/coll-of int?)
   (ds/opt :length_score) (s/coll-of int?)
   (ds/opt :link_score) (s/coll-of int?)
   (ds/opt :google_hits_score) (s/coll-of int?)
   })

(def score-text-api-200-response-interestingness-subscores-spec
  (ds/spec
    {:name ::score-text-api-200-response-interestingness-subscores
     :spec score-text-api-200-response-interestingness-subscores-data}))
