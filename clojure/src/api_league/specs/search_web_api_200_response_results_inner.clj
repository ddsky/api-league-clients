(ns api-league.specs.search-web-api-200-response-results-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-web-api-200-response-results-inner-data
  {
   (ds/opt :title) string?
   (ds/opt :summary) string?
   (ds/opt :url) string?
   })

(def search-web-api-200-response-results-inner-spec
  (ds/spec
    {:name ::search-web-api-200-response-results-inner
     :spec search-web-api-200-response-results-inner-data}))
