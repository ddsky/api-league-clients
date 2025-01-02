(ns api-league.specs.search-royalty-free-images-api-200-response-images-inner-license
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-royalty-free-images-api-200-response-images-inner-license-data
  {
   (ds/opt :name) string?
   (ds/opt :link) string?
   })

(def search-royalty-free-images-api-200-response-images-inner-license-spec
  (ds/spec
    {:name ::search-royalty-free-images-api-200-response-images-inner-license
     :spec search-royalty-free-images-api-200-response-images-inner-license-data}))
