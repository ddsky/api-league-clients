(ns api-league.specs.search-gifs-api-200-response-images-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-gifs-api-200-response-images-inner-data
  {
   (ds/opt :width) int?
   (ds/opt :url) string?
   (ds/opt :height) int?
   })

(def search-gifs-api-200-response-images-inner-spec
  (ds/spec
    {:name ::search-gifs-api-200-response-images-inner
     :spec search-gifs-api-200-response-images-inner-data}))
