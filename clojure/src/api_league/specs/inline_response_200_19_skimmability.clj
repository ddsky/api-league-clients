(ns api-league.specs.inline-response-200-19-skimmability
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.inline-response-200-19-skimmability-mainscores :refer :all]
            [api-league.specs.inline-response-200-19-skimmability-subscores :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-19-skimmability-data
  {
   (ds/opt :mainscores) inline-response-200-19-skimmability-mainscores-spec
   (ds/opt :subscores) inline-response-200-19-skimmability-subscores-spec
   })

(def inline-response-200-19-skimmability-spec
  (ds/spec
    {:name ::inline-response-200-19-skimmability
     :spec inline-response-200-19-skimmability-data}))
