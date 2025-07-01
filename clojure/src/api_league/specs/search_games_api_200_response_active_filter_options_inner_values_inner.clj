(ns api-league.specs.search-games-api-200-response-active-filter-options-inner-values-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-games-api-200-response-active-filter-options-inner-values-inner-data
  {
   (ds/opt :match) string?
   (ds/opt :value) string?
   })

(def search-games-api-200-response-active-filter-options-inner-values-inner-spec
  (ds/spec
    {:name ::search-games-api-200-response-active-filter-options-inner-values-inner
     :spec search-games-api-200-response-active-filter-options-inner-values-inner-data}))
