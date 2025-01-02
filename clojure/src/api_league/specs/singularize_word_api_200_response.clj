(ns api-league.specs.singularize-word-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def singularize-word-api-200-response-data
  {
   (ds/opt :original) string?
   (ds/opt :singular) string?
   })

(def singularize-word-api-200-response-spec
  (ds/spec
    {:name ::singularize-word-api-200-response
     :spec singularize-word-api-200-response-data}))
