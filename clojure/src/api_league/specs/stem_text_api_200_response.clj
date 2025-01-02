(ns api-league.specs.stem-text-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def stem-text-api-200-response-data
  {
   (ds/opt :original) string?
   (ds/opt :stemmed) string?
   })

(def stem-text-api-200-response-spec
  (ds/spec
    {:name ::stem-text-api-200-response
     :spec stem-text-api-200-response-data}))
