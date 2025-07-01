(ns api-league.specs.retrieve-game-by-id-200-response-official-stores-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retrieve-game-by-id-200-response-official-stores-inner-data
  {
   (ds/opt :url) string?
   (ds/opt :source) string?
   })

(def retrieve-game-by-id-200-response-official-stores-inner-spec
  (ds/spec
    {:name ::retrieve-game-by-id-200-response-official-stores-inner
     :spec retrieve-game-by-id-200-response-official-stores-inner-data}))
