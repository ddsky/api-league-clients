(ns api-league.specs.search-drinks-200-response-drinks-inner-credits
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-drinks-200-response-drinks-inner-credits-data
  {
   (ds/opt :text) string?
   (ds/opt :source_name) string?
   (ds/opt :source_url) string?
   })

(def search-drinks-200-response-drinks-inner-credits-spec
  (ds/spec
    {:name ::search-drinks-200-response-drinks-inner-credits
     :spec search-drinks-200-response-drinks-inner-credits-data}))
