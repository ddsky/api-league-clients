(ns api-league.specs.search-games-api-200-response-active-filter-options-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-games-api-200-response-active-filter-options-inner-values-inner :refer :all]
            )
  (:import (java.io File)))


(def search-games-api-200-response-active-filter-options-inner-data
  {
   (ds/opt :key) string?
   (ds/opt :connection) string?
   (ds/opt :values) (s/coll-of search-games-api-200-response-active-filter-options-inner-values-inner-spec)
   })

(def search-games-api-200-response-active-filter-options-inner-spec
  (ds/spec
    {:name ::search-games-api-200-response-active-filter-options-inner
     :spec search-games-api-200-response-active-filter-options-inner-data}))
