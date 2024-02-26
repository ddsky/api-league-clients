(ns api-league.specs.inline-response-200-13
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-13-data
  {
   (ds/opt :publish_date) string?
   })

(def inline-response-200-13-spec
  (ds/spec
    {:name ::inline-response-200-13
     :spec inline-response-200-13-data}))
