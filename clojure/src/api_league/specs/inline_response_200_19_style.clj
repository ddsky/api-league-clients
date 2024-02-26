(ns api-league.specs.inline-response-200-19-style
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.inline-response-200-19-readability-mainscores :refer :all]
            [api-league.specs.inline-response-200-19-style-subscores :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-19-style-data
  {
   (ds/opt :mainscores) inline-response-200-19-readability-mainscores-spec
   (ds/opt :subscores) inline-response-200-19-style-subscores-spec
   })

(def inline-response-200-19-style-spec
  (ds/spec
    {:name ::inline-response-200-19-style
     :spec inline-response-200-19-style-data}))
