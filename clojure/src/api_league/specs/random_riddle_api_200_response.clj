(ns api-league.specs.random-riddle-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def random-riddle-api-200-response-data
  {
   (ds/opt :riddle) string?
   (ds/opt :answer) string?
   (ds/opt :difficulty) string?
   })

(def random-riddle-api-200-response-spec
  (ds/spec
    {:name ::random-riddle-api-200-response
     :spec random-riddle-api-200-response-data}))
