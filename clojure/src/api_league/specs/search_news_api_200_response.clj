(ns api-league.specs.search-news-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-news-api-200-response-news-inner :refer :all]
            )
  (:import (java.io File)))


(def search-news-api-200-response-data
  {
   (ds/opt :offset) int?
   (ds/opt :number) int?
   (ds/opt :available) int?
   (ds/opt :news) (s/coll-of search-news-api-200-response-news-inner-spec)
   })

(def search-news-api-200-response-spec
  (ds/spec
    {:name ::search-news-api-200-response
     :spec search-news-api-200-response-data}))
