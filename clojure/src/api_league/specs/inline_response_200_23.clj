(ns api-league.specs.inline-response-200-23
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-23-data
  {
   (ds/opt :tagged_text) string?
   })

(def inline-response-200-23-spec
  (ds/spec
    {:name ::inline-response-200-23
     :spec inline-response-200-23-data}))
