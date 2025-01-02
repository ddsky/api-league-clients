(ns api-league.specs.search-restaurants-api-200-response-restaurants-inner-local-hours-operational
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-restaurants-api-200-response-restaurants-inner-local-hours-operational-data
  {
   (ds/opt :sunday) string?
   (ds/opt :saturday) string?
   (ds/opt :tuesday) string?
   (ds/opt :thursday) string?
   (ds/opt :friday) string?
   (ds/opt :wednesday) string?
   (ds/opt :monday) string?
   })

(def search-restaurants-api-200-response-restaurants-inner-local-hours-operational-spec
  (ds/spec
    {:name ::search-restaurants-api-200-response-restaurants-inner-local-hours-operational
     :spec search-restaurants-api-200-response-restaurants-inner-local-hours-operational-data}))
