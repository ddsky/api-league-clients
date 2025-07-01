(ns api-league.specs.search-games-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs. :refer :all]
            [api-league.specs.search-games-api-200-response-active-filter-options-inner :refer :all]
            [api-league.specs.search-games-api-200-response-results-inner :refer :all]
            [api-league.specs.search-games-api-200-response-filter-options-inner :refer :all]
            [api-league.specs.search-games-api-200-response-sorting-options-inner :refer :all]
            )
  (:import (java.io File)))


(def search-games-api-200-response-data
  {
   (ds/opt :sorting) any?
   (ds/opt :active_filter_options) (s/coll-of search-games-api-200-response-active-filter-options-inner-spec)
   (ds/opt :query) string?
   (ds/opt :total_results) int?
   (ds/opt :limit) int?
   (ds/opt :offset) int?
   (ds/opt :results) (s/coll-of search-games-api-200-response-results-inner-spec)
   (ds/opt :filter_options) (s/coll-of search-games-api-200-response-filter-options-inner-spec)
   (ds/opt :sorting_options) (s/coll-of search-games-api-200-response-sorting-options-inner-spec)
   })

(def search-games-api-200-response-spec
  (ds/spec
    {:name ::search-games-api-200-response
     :spec search-games-api-200-response-data}))
