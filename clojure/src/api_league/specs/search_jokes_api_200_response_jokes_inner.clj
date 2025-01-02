(ns api-league.specs.search-jokes-api-200-response-jokes-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-jokes-api-200-response-jokes-inner-data
  {
   (ds/opt :joke) string?
   })

(def search-jokes-api-200-response-jokes-inner-spec
  (ds/spec
    {:name ::search-jokes-api-200-response-jokes-inner
     :spec search-jokes-api-200-response-jokes-inner-data}))
