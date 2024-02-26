(ns api-league.specs.inline-response-200-20
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.inline-response-200-19-readability :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-20-data
  {
   (ds/opt :readability) inline-response-200-19-readability-spec
   })

(def inline-response-200-20-spec
  (ds/spec
    {:name ::inline-response-200-20
     :spec inline-response-200-20-data}))
