(ns api-league.specs.extract-news-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.extract-news-200-response-images-inner :refer :all]
            [api-league.specs.extract-news-200-response-videos-inner :refer :all]
            )
  (:import (java.io File)))


(def extract-news-200-response-data
  {
   (ds/opt :title) string?
   (ds/opt :text) string?
   (ds/opt :url) string?
   (ds/opt :images) (s/coll-of extract-news-200-response-images-inner-spec)
   (ds/opt :videos) (s/coll-of extract-news-200-response-videos-inner-spec)
   (ds/opt :publish_date) string?
   (ds/opt :authors) (s/coll-of string?)
   (ds/opt :language) string?
   })

(def extract-news-200-response-spec
  (ds/spec
    {:name ::extract-news-200-response
     :spec extract-news-200-response-data}))
