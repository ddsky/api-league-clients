(ns api-league.specs.retrieve-artwork-by-id-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-artwork-by-id-200-response-data
  {
   (ds/opt :id) int?
   (ds/opt :title) string?
   (ds/opt :image) string?
   (ds/opt :start_date) int?
   (ds/opt :end_date) int?
   (ds/opt :description) string?
   })

(def retrieve-artwork-by-id-200-response-spec
  (ds/spec
    {:name ::retrieve-artwork-by-id-200-response
     :spec retrieve-artwork-by-id-200-response-data}))
