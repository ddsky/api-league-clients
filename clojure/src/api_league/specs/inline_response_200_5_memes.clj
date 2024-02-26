(ns api-league.specs.inline-response-200-5-memes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-5-memes-data
  {
   (ds/opt :type) string?
   (ds/opt :description) string?
   (ds/opt :url) string?
   })

(def inline-response-200-5-memes-spec
  (ds/spec
    {:name ::inline-response-200-5-memes
     :spec inline-response-200-5-memes-data}))
