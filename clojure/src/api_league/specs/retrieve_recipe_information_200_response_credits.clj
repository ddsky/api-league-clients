(ns api-league.specs.retrieve-recipe-information-200-response-credits
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-200-response-credits-data
  {
   (ds/opt :license) string?
   (ds/opt :text) string?
   (ds/opt :source_name) string?
   (ds/opt :source_url) string?
   })

(def retrieve-recipe-information-200-response-credits-spec
  (ds/spec
    {:name ::retrieve-recipe-information-200-response-credits
     :spec retrieve-recipe-information-200-response-credits-data}))
