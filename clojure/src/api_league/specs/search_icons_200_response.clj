(ns api-league.specs.search-icons-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-royalty-free-images-200-response-images-inner :refer :all]
            )
  (:import (java.io File)))


(def search-icons-200-response-data
  {
   (ds/opt :icons) (s/coll-of search-royalty-free-images-200-response-images-inner-spec)
   })

(def search-icons-200-response-spec
  (ds/spec
    {:name ::search-icons-200-response
     :spec search-icons-200-response-data}))
