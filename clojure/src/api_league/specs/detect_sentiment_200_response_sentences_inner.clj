(ns api-league.specs.detect-sentiment-200-response-sentences-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def detect-sentiment-200-response-sentences-inner-data
  {
   (ds/opt :length) int?
   (ds/opt :sentiment) string?
   (ds/opt :offset) int?
   (ds/opt :confidence) int?
   })

(def detect-sentiment-200-response-sentences-inner-spec
  (ds/spec
    {:name ::detect-sentiment-200-response-sentences-inner
     :spec detect-sentiment-200-response-sentences-inner-data}))
