(ns api-league.specs.retrieve-recipe-information-200-response-nutrition-flavonoids-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-200-response-nutrition-flavonoids-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :amount) int?
   (ds/opt :unit) string?
   })

(def retrieve-recipe-information-200-response-nutrition-flavonoids-inner-spec
  (ds/spec
    {:name ::retrieve-recipe-information-200-response-nutrition-flavonoids-inner
     :spec retrieve-recipe-information-200-response-nutrition-flavonoids-inner-data}))
