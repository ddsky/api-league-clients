(ns api-league.specs.extract-authors-api-200-response-authors-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def extract-authors-api-200-response-authors-inner-data
  {
   (ds/opt :link) string?
   (ds/opt :name) string?
   })

(def extract-authors-api-200-response-authors-inner-spec
  (ds/spec
    {:name ::extract-authors-api-200-response-authors-inner
     :spec extract-authors-api-200-response-authors-inner-data}))
