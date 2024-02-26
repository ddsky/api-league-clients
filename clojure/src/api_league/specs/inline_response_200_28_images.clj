(ns api-league.specs.inline-response-200-28-images
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.inline-response-200-28-license :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-28-images-data
  {
   (ds/opt :width) int?
   (ds/opt :license) inline-response-200-28-license-spec
   (ds/opt :thumbnail) string?
   (ds/opt :id) string?
   (ds/opt :url) string?
   (ds/opt :height) int?
   })

(def inline-response-200-28-images-spec
  (ds/spec
    {:name ::inline-response-200-28-images
     :spec inline-response-200-28-images-data}))
