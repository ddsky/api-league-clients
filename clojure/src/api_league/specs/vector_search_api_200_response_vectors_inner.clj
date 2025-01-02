(ns api-league.specs.vector-search-api-200-response-vectors-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def vector-search-api-200-response-vectors-inner-data
  {
   (ds/opt :license) string?
   (ds/opt :title) string?
   (ds/opt :author) string?
   (ds/opt :image_url) string?
   })

(def vector-search-api-200-response-vectors-inner-spec
  (ds/spec
    {:name ::vector-search-api-200-response-vectors-inner
     :spec vector-search-api-200-response-vectors-inner-data}))
