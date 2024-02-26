(ns api-league.specs.inline-response-200-16
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-16-data
  {
   (ds/opt :corrected_text) string?
   })

(def inline-response-200-16-spec
  (ds/spec
    {:name ::inline-response-200-16
     :spec inline-response-200-16-data}))
