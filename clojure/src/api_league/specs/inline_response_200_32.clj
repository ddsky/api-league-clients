(ns api-league.specs.inline-response-200-32
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-32-data
  {
   (ds/opt :status) string?
   })

(def inline-response-200-32-spec
  (ds/spec
    {:name ::inline-response-200-32
     :spec inline-response-200-32-data}))
