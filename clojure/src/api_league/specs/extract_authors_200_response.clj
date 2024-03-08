(ns api-league.specs.extract-authors-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.extract-authors-200-response-authors-inner :refer :all]
            )
  (:import (java.io File)))


(def extract-authors-200-response-data
  {
   (ds/opt :authors) (s/coll-of extract-authors-200-response-authors-inner-spec)
   })

(def extract-authors-200-response-spec
  (ds/spec
    {:name ::extract-authors-200-response
     :spec extract-authors-200-response-data}))
