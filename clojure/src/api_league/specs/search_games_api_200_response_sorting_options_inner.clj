(ns api-league.specs.search-games-api-200-response-sorting-options-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-games-api-200-response-sorting-options-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :key) string?
   (ds/opt :sort) string?
   })

(def search-games-api-200-response-sorting-options-inner-spec
  (ds/spec
    {:name ::search-games-api-200-response-sorting-options-inner
     :spec search-games-api-200-response-sorting-options-inner-data}))
