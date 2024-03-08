(ns api-league.specs.random-meme-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def random-meme-200-response-data
  {
   (ds/opt :description) string?
   (ds/opt :url) string?
   (ds/opt :type) string?
   (ds/opt :width) int?
   (ds/opt :height) int?
   (ds/opt :ratio) float?
   })

(def random-meme-200-response-spec
  (ds/spec
    {:name ::random-meme-200-response
     :spec random-meme-200-response-data}))
