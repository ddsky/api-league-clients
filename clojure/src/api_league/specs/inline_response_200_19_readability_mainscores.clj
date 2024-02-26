(ns api-league.specs.inline-response-200-19-readability-mainscores
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-19-readability-mainscores-data
  {
   (ds/opt :total_possible) int?
   (ds/opt :total) int?
   })

(def inline-response-200-19-readability-mainscores-spec
  (ds/spec
    {:name ::inline-response-200-19-readability-mainscores
     :spec inline-response-200-19-readability-mainscores-data}))
