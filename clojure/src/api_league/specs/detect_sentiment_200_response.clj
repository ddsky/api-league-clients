(ns api-league.specs.detect-sentiment-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.detect-sentiment-200-response-document :refer :all]
            [api-league.specs.detect-sentiment-200-response-sentences-inner :refer :all]
            )
  (:import (java.io File)))


(def detect-sentiment-200-response-data
  {
   (ds/opt :document) detect-sentiment-200-response-document-spec
   (ds/opt :sentences) (s/coll-of detect-sentiment-200-response-sentences-inner-spec)
   })

(def detect-sentiment-200-response-spec
  (ds/spec
    {:name ::detect-sentiment-200-response
     :spec detect-sentiment-200-response-data}))
