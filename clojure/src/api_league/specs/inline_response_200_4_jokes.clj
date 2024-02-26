(ns api-league.specs.inline-response-200-4-jokes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-4-jokes-data
  {
   (ds/opt :joke) string?
   })

(def inline-response-200-4-jokes-spec
  (ds/spec
    {:name ::inline-response-200-4-jokes
     :spec inline-response-200-4-jokes-data}))
