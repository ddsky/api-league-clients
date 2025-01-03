(ns api-league.specs.detect-language-api-200-response-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def detect-language-api-200-response-inner-data
  {
   (ds/opt :language) string?
   (ds/opt :confidence) float?
   })

(def detect-language-api-200-response-inner-spec
  (ds/spec
    {:name ::detect-language-api-200-response-inner
     :spec detect-language-api-200-response-inner-data}))
