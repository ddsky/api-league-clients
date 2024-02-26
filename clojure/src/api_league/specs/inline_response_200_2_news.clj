(ns api-league.specs.inline-response-200-2-news
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-2-news-data
  {
   (ds/opt :summary) string?
   (ds/opt :image) string?
   (ds/opt :sentiment) float?
   (ds/opt :source_country) string?
   (ds/opt :language) string?
   (ds/opt :id) int?
   (ds/opt :text) string?
   (ds/opt :title) string?
   (ds/opt :publish_date) string?
   (ds/opt :url) string?
   (ds/opt :authors) (s/coll-of string?)
   })

(def inline-response-200-2-news-spec
  (ds/spec
    {:name ::inline-response-200-2-news
     :spec inline-response-200-2-news-data}))
