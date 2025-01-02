(ns api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner-measures :refer :all]
            )
  (:import (java.io File)))


(def search-drinks-api-200-response-drinks-inner-ingredients-inner-data
  {
   (ds/opt :image) string?
   (ds/opt :name_clean) string?
   (ds/opt :amount) int?
   (ds/opt :unit) string?
   (ds/opt :measures) search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-spec
   (ds/opt :original) string?
   (ds/opt :meta) (s/coll-of string?)
   (ds/opt :original_name) string?
   (ds/opt :name) string?
   (ds/opt :id) int?
   (ds/opt :aisle) string?
   (ds/opt :consistency) string?
   })

(def search-drinks-api-200-response-drinks-inner-ingredients-inner-spec
  (ds/spec
    {:name ::search-drinks-api-200-response-drinks-inner-ingredients-inner
     :spec search-drinks-api-200-response-drinks-inner-ingredients-inner-data}))
