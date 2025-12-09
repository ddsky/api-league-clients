(ns api-league.specs.random-life-hack-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def random-life-hack-api-200-response-data
  {
   (ds/opt :title) string?
   (ds/opt :description) string?
   })

(def random-life-hack-api-200-response-spec
  (ds/spec
    {:name ::random-life-hack-api-200-response
     :spec random-life-hack-api-200-response-data}))
