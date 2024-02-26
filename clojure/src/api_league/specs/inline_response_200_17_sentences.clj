(ns api-league.specs.inline-response-200-17-sentences
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-17-sentences-data
  {
   (ds/opt :length) int?
   (ds/opt :sentiment) string?
   (ds/opt :offset) int?
   (ds/opt :confidence) int?
   })

(def inline-response-200-17-sentences-spec
  (ds/spec
    {:name ::inline-response-200-17-sentences
     :spec inline-response-200-17-sentences-data}))
