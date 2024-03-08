(ns api-league.specs.extract-dates-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.extract-dates-200-response-dates-inner :refer :all]
            )
  (:import (java.io File)))


(def extract-dates-200-response-data
  {
   (ds/opt :dates) (s/coll-of extract-dates-200-response-dates-inner-spec)
   })

(def extract-dates-200-response-spec
  (ds/spec
    {:name ::extract-dates-200-response
     :spec extract-dates-200-response-data}))
