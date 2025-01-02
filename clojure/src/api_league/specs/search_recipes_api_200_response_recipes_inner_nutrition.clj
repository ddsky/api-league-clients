(ns api-league.specs.search-recipes-api-200-response-recipes-inner-nutrition
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-recipes-api-200-response-recipes-inner-nutrition-nutrients-inner :refer :all]
            )
  (:import (java.io File)))


(def search-recipes-api-200-response-recipes-inner-nutrition-data
  {
   (ds/opt :nutrients) (s/coll-of search-recipes-api-200-response-recipes-inner-nutrition-nutrients-inner-spec)
   })

(def search-recipes-api-200-response-recipes-inner-nutrition-spec
  (ds/spec
    {:name ::search-recipes-api-200-response-recipes-inner-nutrition
     :spec search-recipes-api-200-response-recipes-inner-nutrition-data}))
