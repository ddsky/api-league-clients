(ns api-league.specs.inline-response-200-18-document
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-18-document-data
  {
   (ds/opt :sentiment) string?
   (ds/opt :confidence) int?
   (ds/opt :average_confidence) int?
   })

(def inline-response-200-18-document-spec
  (ds/spec
    {:name ::inline-response-200-18-document
     :spec inline-response-200-18-document-data}))
