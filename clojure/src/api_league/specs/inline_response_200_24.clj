(ns api-league.specs.inline-response-200-24
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-24-data
  {
   (ds/opt :original) string?
   (ds/opt :stemmed) string?
   })

(def inline-response-200-24-spec
  (ds/spec
    {:name ::inline-response-200-24
     :spec inline-response-200-24-data}))
