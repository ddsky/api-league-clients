(ns api-league.specs.search-memes-api-200-response-memes-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-memes-api-200-response-memes-inner-data
  {
   (ds/opt :type) string?
   (ds/opt :description) string?
   (ds/opt :url) string?
   })

(def search-memes-api-200-response-memes-inner-spec
  (ds/spec
    {:name ::search-memes-api-200-response-memes-inner
     :spec search-memes-api-200-response-memes-inner-data}))
