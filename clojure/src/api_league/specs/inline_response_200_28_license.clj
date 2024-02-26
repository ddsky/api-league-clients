(ns api-league.specs.inline-response-200-28-license
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-28-license-data
  {
   (ds/opt :name) string?
   (ds/opt :link) string?
   })

(def inline-response-200-28-license-spec
  (ds/spec
    {:name ::inline-response-200-28-license
     :spec inline-response-200-28-license-data}))
