(ns api-league.specs.search-royalty-free-images-api-200-response-images-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-royalty-free-images-api-200-response-images-inner-license :refer :all]
            )
  (:import (java.io File)))


(def search-royalty-free-images-api-200-response-images-inner-data
  {
   (ds/opt :width) int?
   (ds/opt :license) search-royalty-free-images-api-200-response-images-inner-license-spec
   (ds/opt :thumbnail) string?
   (ds/opt :id) string?
   (ds/opt :url) string?
   (ds/opt :height) int?
   })

(def search-royalty-free-images-api-200-response-images-inner-spec
  (ds/spec
    {:name ::search-royalty-free-images-api-200-response-images-inner
     :spec search-royalty-free-images-api-200-response-images-inner-data}))
