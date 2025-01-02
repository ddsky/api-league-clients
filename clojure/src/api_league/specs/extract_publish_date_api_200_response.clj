(ns api-league.specs.extract-publish-date-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def extract-publish-date-api-200-response-data
  {
   (ds/opt :publish_date) string?
   })

(def extract-publish-date-api-200-response-spec
  (ds/spec
    {:name ::extract-publish-date-api-200-response
     :spec extract-publish-date-api-200-response-data}))
