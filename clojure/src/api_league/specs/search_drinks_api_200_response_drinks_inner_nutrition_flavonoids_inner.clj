(ns api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-flavonoids-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-drinks-api-200-response-drinks-inner-nutrition-flavonoids-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :amount) int?
   (ds/opt :unit) string?
   })

(def search-drinks-api-200-response-drinks-inner-nutrition-flavonoids-inner-spec
  (ds/spec
    {:name ::search-drinks-api-200-response-drinks-inner-nutrition-flavonoids-inner
     :spec search-drinks-api-200-response-drinks-inner-nutrition-flavonoids-inner-data}))
