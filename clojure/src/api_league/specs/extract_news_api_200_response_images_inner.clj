(ns api-league.specs.extract-news-api-200-response-images-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def extract-news-api-200-response-images-inner-data
  {
   (ds/opt :width) int?
   (ds/opt :title) string?
   (ds/opt :url) string?
   (ds/opt :height) int?
   })

(def extract-news-api-200-response-images-inner-spec
  (ds/spec
    {:name ::extract-news-api-200-response-images-inner
     :spec extract-news-api-200-response-images-inner-data}))
