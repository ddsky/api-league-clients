(ns api-league.specs.find-similar-games-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.find-similar-games-api-200-response-results-inner :refer :all]
            )
  (:import (java.io File)))


(def find-similar-games-api-200-response-data
  {
   (ds/opt :results) (s/coll-of find-similar-games-api-200-response-results-inner-spec)
   })

(def find-similar-games-api-200-response-spec
  (ds/spec
    {:name ::find-similar-games-api-200-response
     :spec find-similar-games-api-200-response-data}))
