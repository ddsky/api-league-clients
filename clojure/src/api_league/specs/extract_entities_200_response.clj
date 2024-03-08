(ns api-league.specs.extract-entities-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.extract-entities-200-response-entities-inner :refer :all]
            )
  (:import (java.io File)))


(def extract-entities-200-response-data
  {
   (ds/opt :entities) (s/coll-of extract-entities-200-response-entities-inner-spec)
   })

(def extract-entities-200-response-spec
  (ds/spec
    {:name ::extract-entities-200-response
     :spec extract-entities-200-response-data}))
