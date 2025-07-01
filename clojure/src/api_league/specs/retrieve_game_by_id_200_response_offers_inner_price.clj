(ns api-league.specs.retrieve-game-by-id-200-response-offers-inner-price
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-game-by-id-200-response-offers-inner-price-data
  {
   (ds/opt :currency) string?
   (ds/opt :discount_percent) int?
   (ds/opt :value) float?
   (ds/opt :initial) float?
   })

(def retrieve-game-by-id-200-response-offers-inner-price-spec
  (ds/spec
    {:name ::retrieve-game-by-id-200-response-offers-inner-price
     :spec retrieve-game-by-id-200-response-offers-inner-price-data}))
