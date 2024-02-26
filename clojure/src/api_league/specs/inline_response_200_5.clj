(ns api-league.specs.inline-response-200-5
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.inline-response-200-5-memes :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-5-data
  {
   (ds/opt :memes) (s/coll-of inline-response-200-5-memes-spec)
   (ds/opt :available) int?
   })

(def inline-response-200-5-spec
  (ds/spec
    {:name ::inline-response-200-5
     :spec inline-response-200-5-data}))
