(ns api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner-measures
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-metric :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-us :refer :all]
            )
  (:import (java.io File)))


(def search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-data
  {
   (ds/opt :metric) search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-metric-spec
   (ds/opt :us) search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-us-spec
   })

(def search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-spec
  (ds/spec
    {:name ::search-drinks-api-200-response-drinks-inner-ingredients-inner-measures
     :spec search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-data}))
