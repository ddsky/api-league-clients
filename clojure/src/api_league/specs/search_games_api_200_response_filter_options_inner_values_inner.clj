(ns api-league.specs.search-games-api-200-response-filter-options-inner-values-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-games-api-200-response-filter-options-inner-values-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :count) int?
   (ds/opt :key) string?
   })

(def search-games-api-200-response-filter-options-inner-values-inner-spec
  (ds/spec
    {:name ::search-games-api-200-response-filter-options-inner-values-inner
     :spec search-games-api-200-response-filter-options-inner-values-inner-data}))
