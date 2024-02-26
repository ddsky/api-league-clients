(ns api-league.specs.inline-response-200-18
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.inline-response-200-18-document :refer :all]
            [api-league.specs.inline-response-200-18-sentences :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-18-data
  {
   (ds/opt :document) inline-response-200-18-document-spec
   (ds/opt :sentences) (s/coll-of inline-response-200-18-sentences-spec)
   })

(def inline-response-200-18-spec
  (ds/spec
    {:name ::inline-response-200-18
     :spec inline-response-200-18-data}))
