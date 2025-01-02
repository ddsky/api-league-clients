(ns api-league.specs.search-gifs-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-gifs-api-200-response-images-inner :refer :all]
            )
  (:import (java.io File)))


(def search-gifs-api-200-response-data
  {
   (ds/opt :images) (s/coll-of search-gifs-api-200-response-images-inner-spec)
   })

(def search-gifs-api-200-response-spec
  (ds/spec
    {:name ::search-gifs-api-200-response
     :spec search-gifs-api-200-response-data}))
