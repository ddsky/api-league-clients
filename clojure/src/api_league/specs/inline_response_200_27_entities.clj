(ns api-league.specs.inline-response-200-27-entities
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-27-entities-data
  {
   (ds/opt :start_position) int?
   (ds/opt :image) string?
   (ds/opt :type) string?
   (ds/opt :value) string?
   (ds/opt :end_position) int?
   })

(def inline-response-200-27-entities-spec
  (ds/spec
    {:name ::inline-response-200-27-entities
     :spec inline-response-200-27-entities-data}))
