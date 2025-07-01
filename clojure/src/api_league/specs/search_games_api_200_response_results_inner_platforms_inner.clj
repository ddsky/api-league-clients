(ns api-league.specs.search-games-api-200-response-results-inner-platforms-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-games-api-200-response-results-inner-platforms-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :value) string?
   })

(def search-games-api-200-response-results-inner-platforms-inner-spec
  (ds/spec
    {:name ::search-games-api-200-response-results-inner-platforms-inner
     :spec search-games-api-200-response-results-inner-platforms-inner-data}))
