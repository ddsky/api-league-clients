(ns api-league.specs.search-memes-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-memes-200-response-memes-inner :refer :all]
            )
  (:import (java.io File)))


(def search-memes-200-response-data
  {
   (ds/opt :memes) (s/coll-of search-memes-200-response-memes-inner-spec)
   (ds/opt :available) int?
   })

(def search-memes-200-response-spec
  (ds/spec
    {:name ::search-memes-200-response
     :spec search-memes-200-response-data}))
