(ns api-league.specs.random-trivia-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def random-trivia-200-response-data
  {
   (ds/opt :trivia) string?
   })

(def random-trivia-200-response-spec
  (ds/spec
    {:name ::random-trivia-200-response
     :spec random-trivia-200-response-data}))
