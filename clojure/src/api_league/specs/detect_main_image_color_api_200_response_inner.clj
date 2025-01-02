(ns api-league.specs.detect-main-image-color-api-200-response-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def detect-main-image-color-api-200-response-inner-data
  {
   (ds/opt :specific_color) string?
   (ds/opt :main_color) string?
   (ds/opt :hex_code) string?
   })

(def detect-main-image-color-api-200-response-inner-spec
  (ds/spec
    {:name ::detect-main-image-color-api-200-response-inner
     :spec detect-main-image-color-api-200-response-inner-data}))
