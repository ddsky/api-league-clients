(ns api-league.specs.random-poem-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def random-poem-api-200-response-data
  {
   (ds/opt :title) string?
   (ds/opt :author) string?
   (ds/opt :poem) string?
   })

(def random-poem-api-200-response-spec
  (ds/spec
    {:name ::random-poem-api-200-response
     :spec random-poem-api-200-response-data}))
