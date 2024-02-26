(ns api-league.specs.inline-response-200-14-results
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-14-results-data
  {
   (ds/opt :title) string?
   (ds/opt :summary) string?
   (ds/opt :url) string?
   })

(def inline-response-200-14-results-spec
  (ds/spec
    {:name ::inline-response-200-14-results
     :spec inline-response-200-14-results-data}))
