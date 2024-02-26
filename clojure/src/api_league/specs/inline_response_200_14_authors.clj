(ns api-league.specs.inline-response-200-14-authors
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-14-authors-data
  {
   (ds/opt :link) string?
   (ds/opt :name) string?
   })

(def inline-response-200-14-authors-spec
  (ds/spec
    {:name ::inline-response-200-14-authors
     :spec inline-response-200-14-authors-data}))
