(ns api-league.specs.search-drinks-200-response-drinks-inner-nutrition-weight-per-serving
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-drinks-200-response-drinks-inner-nutrition-weight-per-serving-data
  {
   (ds/opt :amount) int?
   (ds/opt :unit) string?
   })

(def search-drinks-200-response-drinks-inner-nutrition-weight-per-serving-spec
  (ds/spec
    {:name ::search-drinks-200-response-drinks-inner-nutrition-weight-per-serving
     :spec search-drinks-200-response-drinks-inner-nutrition-weight-per-serving-data}))
