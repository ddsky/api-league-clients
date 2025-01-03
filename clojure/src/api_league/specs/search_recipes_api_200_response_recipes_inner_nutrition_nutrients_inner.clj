(ns api-league.specs.search-recipes-api-200-response-recipes-inner-nutrition-nutrients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-recipes-api-200-response-recipes-inner-nutrition-nutrients-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :amount) float?
   (ds/opt :unit) string?
   })

(def search-recipes-api-200-response-recipes-inner-nutrition-nutrients-inner-spec
  (ds/spec
    {:name ::search-recipes-api-200-response-recipes-inner-nutrition-nutrients-inner
     :spec search-recipes-api-200-response-recipes-inner-nutrition-nutrients-inner-data}))
