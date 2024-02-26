(ns api-league.specs.inline-response-200-18-style-subscores
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-18-style-subscores-data
  {
   (ds/opt :abbreviation_score) (s/coll-of int?)
   (ds/opt :style_score) (s/coll-of int?)
   (ds/opt :spelling_score) (s/coll-of int?)
   })

(def inline-response-200-18-style-subscores-spec
  (ds/spec
    {:name ::inline-response-200-18-style-subscores
     :spec inline-response-200-18-style-subscores-data}))
