(ns api-league.specs.inline-response-200-11
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-11-data
  {
   (ds/opt :title) string?
   (ds/opt :author) string?
   (ds/opt :poem) string?
   })

(def inline-response-200-11-spec
  (ds/spec
    {:name ::inline-response-200-11
     :spec inline-response-200-11-data}))
