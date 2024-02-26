(ns api-league.specs.inline-response-200-12
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-12-data
  {
   (ds/opt :title) string?
   (ds/opt :main_text) string?
   (ds/opt :main_html) string?
   (ds/opt :images) (s/coll-of string?)
   })

(def inline-response-200-12-spec
  (ds/spec
    {:name ::inline-response-200-12
     :spec inline-response-200-12-data}))
