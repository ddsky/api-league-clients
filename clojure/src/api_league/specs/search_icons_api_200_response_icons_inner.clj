(ns api-league.specs.search-icons-api-200-response-icons-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-royalty-free-images-api-200-response-images-inner-license :refer :all]
            )
  (:import (java.io File)))


(def search-icons-api-200-response-icons-inner-data
  {
   (ds/opt :id) string?
   (ds/opt :url) string?
   (ds/opt :thumbnail) string?
   (ds/opt :width) int?
   (ds/opt :height) int?
   (ds/opt :license) search-royalty-free-images-api-200-response-images-inner-license-spec
   })

(def search-icons-api-200-response-icons-inner-spec
  (ds/spec
    {:name ::search-icons-api-200-response-icons-inner
     :spec search-icons-api-200-response-icons-inner-data}))
