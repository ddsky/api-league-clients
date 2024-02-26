(ns api-league.specs.inline-response-200-7-images
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-7-images-data
  {
   (ds/opt :width) int?
   (ds/opt :url) string?
   (ds/opt :height) int?
   })

(def inline-response-200-7-images-spec
  (ds/spec
    {:name ::inline-response-200-7-images
     :spec inline-response-200-7-images-data}))
