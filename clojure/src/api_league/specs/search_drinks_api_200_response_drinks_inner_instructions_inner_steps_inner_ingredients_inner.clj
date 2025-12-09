(ns api-league.specs.search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner-data
  {
   (ds/opt :id) int?
   (ds/opt :name) string?
   (ds/opt :image) string?
   })

(def search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner-spec
  (ds/spec
    {:name ::search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner
     :spec search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner-data}))
