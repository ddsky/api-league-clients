(ns api-league.specs.inline-response-200-19-interestingness
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.inline-response-200-19-skimmability-mainscores :refer :all]
            [api-league.specs.inline-response-200-19-interestingness-subscores :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-19-interestingness-data
  {
   (ds/opt :mainscores) inline-response-200-19-skimmability-mainscores-spec
   (ds/opt :subscores) inline-response-200-19-interestingness-subscores-spec
   })

(def inline-response-200-19-interestingness-spec
  (ds/spec
    {:name ::inline-response-200-19-interestingness
     :spec inline-response-200-19-interestingness-data}))
