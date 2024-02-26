(ns api-league.specs.inline-response-200-20-dates
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.null :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-20-dates-data
  {
   (ds/opt :start_position) int?
   (ds/opt :date) string?
   (ds/opt :normalized_date) null-spec
   (ds/opt :tag) string?
   (ds/opt :end_position) int?
   })

(def inline-response-200-20-dates-spec
  (ds/spec
    {:name ::inline-response-200-20-dates
     :spec inline-response-200-20-dates-data}))
