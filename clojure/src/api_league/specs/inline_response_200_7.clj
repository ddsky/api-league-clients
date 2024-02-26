(ns api-league.specs.inline-response-200-7
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.inline-response-200-7-images :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-7-data
  {
   (ds/opt :images) (s/coll-of inline-response-200-7-images-spec)
   })

(def inline-response-200-7-spec
  (ds/spec
    {:name ::inline-response-200-7
     :spec inline-response-200-7-data}))
