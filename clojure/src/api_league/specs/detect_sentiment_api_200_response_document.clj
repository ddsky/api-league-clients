(ns api-league.specs.detect-sentiment-api-200-response-document
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def detect-sentiment-api-200-response-document-data
  {
   (ds/opt :sentiment) string?
   (ds/opt :confidence) int?
   (ds/opt :average_confidence) int?
   })

(def detect-sentiment-api-200-response-document-spec
  (ds/spec
    {:name ::detect-sentiment-api-200-response-document
     :spec detect-sentiment-api-200-response-document-data}))
