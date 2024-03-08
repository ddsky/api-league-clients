(ns api-league.specs.score-text-200-response-style
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.score-text-200-response-readability-mainscores :refer :all]
            [api-league.specs.score-text-200-response-style-subscores :refer :all]
            )
  (:import (java.io File)))


(def score-text-200-response-style-data
  {
   (ds/opt :mainscores) score-text-200-response-readability-mainscores-spec
   (ds/opt :subscores) score-text-200-response-style-subscores-spec
   })

(def score-text-200-response-style-spec
  (ds/spec
    {:name ::score-text-200-response-style
     :spec score-text-200-response-style-data}))
