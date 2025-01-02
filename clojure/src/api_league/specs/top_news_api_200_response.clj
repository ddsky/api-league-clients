(ns api-league.specs.top-news-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.top-news-api-200-response-top-news-inner :refer :all]
            )
  (:import (java.io File)))


(def top-news-api-200-response-data
  {
   (ds/opt :top_news) (s/coll-of top-news-api-200-response-top-news-inner-spec)
   (ds/opt :language) string?
   (ds/opt :country) string?
   })

(def top-news-api-200-response-spec
  (ds/spec
    {:name ::top-news-api-200-response
     :spec top-news-api-200-response-data}))
