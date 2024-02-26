(ns api-league.specs.inline-response-200-19-interestingness-subscores
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-19-interestingness-subscores-data
  {
   (ds/opt :title_rating_score) (s/coll-of int?)
   (ds/opt :quote_score) (s/coll-of int?)
   (ds/opt :length_score) (s/coll-of int?)
   (ds/opt :link_score) (s/coll-of int?)
   (ds/opt :google_hits_score) (s/coll-of int?)
   })

(def inline-response-200-19-interestingness-subscores-spec
  (ds/spec
    {:name ::inline-response-200-19-interestingness-subscores
     :spec inline-response-200-19-interestingness-subscores-data}))
