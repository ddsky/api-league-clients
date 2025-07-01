(ns api-league.specs.retrieve-game-by-id-200-response-offers-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.retrieve-game-by-id-200-response-offers-inner-price :refer :all]
            )
  (:import (java.io File)))


(def retrieve-game-by-id-200-response-offers-inner-data
  {
   (ds/opt :store_name) string?
   (ds/opt :title) string?
   (ds/opt :price) retrieve-game-by-id-200-response-offers-inner-price-spec
   (ds/opt :platform) string?
   (ds/opt :url) string?
   })

(def retrieve-game-by-id-200-response-offers-inner-spec
  (ds/spec
    {:name ::retrieve-game-by-id-200-response-offers-inner
     :spec retrieve-game-by-id-200-response-offers-inner-data}))
