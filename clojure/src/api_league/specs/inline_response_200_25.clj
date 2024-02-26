(ns api-league.specs.inline-response-200-25
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-25-data
  {
   (ds/opt :original) string?
   (ds/opt :singular) string?
   })

(def inline-response-200-25-spec
  (ds/spec
    {:name ::inline-response-200-25
     :spec inline-response-200-25-data}))
