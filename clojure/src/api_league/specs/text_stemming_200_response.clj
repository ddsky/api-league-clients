(ns api-league.specs.text-stemming-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def text-stemming-200-response-data
  {
   (ds/opt :original) string?
   (ds/opt :stemmed) string?
   })

(def text-stemming-200-response-spec
  (ds/spec
    {:name ::text-stemming-200-response
     :spec text-stemming-200-response-data}))
