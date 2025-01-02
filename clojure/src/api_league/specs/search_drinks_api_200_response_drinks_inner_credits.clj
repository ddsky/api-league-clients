(ns api-league.specs.search-drinks-api-200-response-drinks-inner-credits
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-drinks-api-200-response-drinks-inner-credits-data
  {
   (ds/opt :text) string?
   (ds/opt :source_name) string?
   (ds/opt :source_url) string?
   })

(def search-drinks-api-200-response-drinks-inner-credits-spec
  (ds/spec
    {:name ::search-drinks-api-200-response-drinks-inner-credits
     :spec search-drinks-api-200-response-drinks-inner-credits-data}))
