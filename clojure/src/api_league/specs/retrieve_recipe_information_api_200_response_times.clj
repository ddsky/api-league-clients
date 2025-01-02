(ns api-league.specs.retrieve-recipe-information-api-200-response-times
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-api-200-response-times-data
  {
   (ds/opt :total_minutes) int?
   })

(def retrieve-recipe-information-api-200-response-times-spec
  (ds/spec
    {:name ::retrieve-recipe-information-api-200-response-times
     :spec retrieve-recipe-information-api-200-response-times-data}))
