(ns api-league.specs.search-drinks-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-drinks-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :image) string?
   (ds/opt :id) int?
   })

(def search-drinks-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner-spec
  (ds/spec
    {:name ::search-drinks-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner
     :spec search-drinks-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner-data}))
