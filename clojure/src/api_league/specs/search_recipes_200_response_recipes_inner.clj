(ns api-league.specs.search-recipes-200-response-recipes-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-recipes-200-response-recipes-inner-nutrition :refer :all]
            )
  (:import (java.io File)))


(def search-recipes-200-response-recipes-inner-data
  {
   (ds/opt :images) (s/coll-of string?)
   (ds/opt :nutrition) search-recipes-200-response-recipes-inner-nutrition-spec
   (ds/opt :id) int?
   (ds/opt :title) string?
   })

(def search-recipes-200-response-recipes-inner-spec
  (ds/spec
    {:name ::search-recipes-200-response-recipes-inner
     :spec search-recipes-200-response-recipes-inner-data}))
