(ns api-league.specs.extract-content-from-a-web-page-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def extract-content-from-a-web-page-200-response-data
  {
   (ds/opt :title) string?
   (ds/opt :main_text) string?
   (ds/opt :main_html) string?
   (ds/opt :images) (s/coll-of string?)
   })

(def extract-content-from-a-web-page-200-response-spec
  (ds/spec
    {:name ::extract-content-from-a-web-page-200-response
     :spec extract-content-from-a-web-page-200-response-data}))
