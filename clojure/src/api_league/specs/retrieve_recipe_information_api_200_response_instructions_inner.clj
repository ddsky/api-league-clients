(ns api-league.specs.retrieve-recipe-information-api-200-response-instructions-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.retrieve-recipe-information-api-200-response-instructions-inner-steps-inner :refer :all]
            )
  (:import (java.io File)))


(def retrieve-recipe-information-api-200-response-instructions-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :steps) (s/coll-of retrieve-recipe-information-api-200-response-instructions-inner-steps-inner-spec)
   })

(def retrieve-recipe-information-api-200-response-instructions-inner-spec
  (ds/spec
    {:name ::retrieve-recipe-information-api-200-response-instructions-inner
     :spec retrieve-recipe-information-api-200-response-instructions-inner-data}))
