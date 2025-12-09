(ns api-league.specs.search-news-api-200-response-news-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-news-api-200-response-news-inner-data
  {
   (ds/opt :id) int?
   (ds/opt :title) string?
   (ds/opt :text) string?
   (ds/opt :summary) string?
   (ds/opt :url) string?
   (ds/opt :image) string?
   (ds/opt :video) string?
   (ds/opt :publish_date) string?
   (ds/opt :authors) (s/coll-of string?)
   (ds/opt :category) string?
   (ds/opt :language) string?
   (ds/opt :source_country) string?
   (ds/opt :sentiment) float?
   })

(def search-news-api-200-response-news-inner-spec
  (ds/spec
    {:name ::search-news-api-200-response-news-inner
     :spec search-news-api-200-response-news-inner-data}))
