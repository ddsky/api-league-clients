(ns api-league.specs.inline-response-200-27
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.inline-response-200-27-entities :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-27-data
  {
   (ds/opt :entities) (s/coll-of inline-response-200-27-entities-spec)
   })

(def inline-response-200-27-spec
  (ds/spec
    {:name ::inline-response-200-27
     :spec inline-response-200-27-data}))
