(ns api-league.specs.random-affirmation-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def random-affirmation-api-200-response-data
  {
   (ds/opt :image) string?
   (ds/opt :affirmation) string?
   })

(def random-affirmation-api-200-response-spec
  (ds/spec
    {:name ::random-affirmation-api-200-response
     :spec random-affirmation-api-200-response-data}))
