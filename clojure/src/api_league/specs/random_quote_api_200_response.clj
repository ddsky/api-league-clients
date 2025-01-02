(ns api-league.specs.random-quote-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def random-quote-api-200-response-data
  {
   (ds/opt :author) string?
   (ds/opt :quote) string?
   })

(def random-quote-api-200-response-spec
  (ds/spec
    {:name ::random-quote-api-200-response
     :spec random-quote-api-200-response-data}))
