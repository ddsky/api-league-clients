(ns api-league.specs.inline-response-200-29
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-29-data
  {
   (ds/opt :specific_color) string?
   (ds/opt :main_color) string?
   (ds/opt :hex_code) string?
   })

(def inline-response-200-29-spec
  (ds/spec
    {:name ::inline-response-200-29
     :spec inline-response-200-29-data}))
