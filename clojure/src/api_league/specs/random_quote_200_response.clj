(ns api-league.specs.random-quote-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def random-quote-200-response-data
  {
   (ds/opt :author) string?
   (ds/opt :quote) string?
   })

(def random-quote-200-response-spec
  (ds/spec
    {:name ::random-quote-200-response
     :spec random-quote-200-response-data}))
