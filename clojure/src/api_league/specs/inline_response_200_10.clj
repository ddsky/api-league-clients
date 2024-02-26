(ns api-league.specs.inline-response-200-10
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-10-data
  {
   (ds/opt :author) string?
   (ds/opt :quote) string?
   })

(def inline-response-200-10-spec
  (ds/spec
    {:name ::inline-response-200-10
     :spec inline-response-200-10-data}))
