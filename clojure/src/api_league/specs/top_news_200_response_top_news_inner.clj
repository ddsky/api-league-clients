(ns api-league.specs.top-news-200-response-top-news-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.top-news-200-response-top-news-inner-news-inner :refer :all]
            )
  (:import (java.io File)))


(def top-news-200-response-top-news-inner-data
  {
   (ds/opt :news) (s/coll-of top-news-200-response-top-news-inner-news-inner-spec)
   })

(def top-news-200-response-top-news-inner-spec
  (ds/spec
    {:name ::top-news-200-response-top-news-inner
     :spec top-news-200-response-top-news-inner-data}))
