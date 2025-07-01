(ns api-league.specs.search-games-api-200-response-filter-options-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-games-api-200-response-filter-options-inner-values-inner :refer :all]
            )
  (:import (java.io File)))


(def search-games-api-200-response-filter-options-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :filter_type) string?
   (ds/opt :key) string?
   (ds/opt :values) (s/coll-of search-games-api-200-response-filter-options-inner-values-inner-spec)
   (ds/opt :filter_connection) string?
   })

(def search-games-api-200-response-filter-options-inner-spec
  (ds/spec
    {:name ::search-games-api-200-response-filter-options-inner
     :spec search-games-api-200-response-filter-options-inner-data}))
