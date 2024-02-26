(ns api-league.specs.inline-response-200-6
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-6-data
  {
   (ds/opt :description) string?
   (ds/opt :url) string?
   (ds/opt :type) string?
   (ds/opt :width) int?
   (ds/opt :height) int?
   (ds/opt :ratio) float?
   })

(def inline-response-200-6-spec
  (ds/spec
    {:name ::inline-response-200-6
     :spec inline-response-200-6-data}))
