(ns api-league.specs.score-text-api-200-response-style
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.score-text-api-200-response-readability-mainscores :refer :all]
            [api-league.specs.score-text-api-200-response-style-subscores :refer :all]
            )
  (:import (java.io File)))


(def score-text-api-200-response-style-data
  {
   (ds/opt :mainscores) score-text-api-200-response-readability-mainscores-spec
   (ds/opt :subscores) score-text-api-200-response-style-subscores-spec
   })

(def score-text-api-200-response-style-spec
  (ds/spec
    {:name ::score-text-api-200-response-style
     :spec score-text-api-200-response-style-data}))
