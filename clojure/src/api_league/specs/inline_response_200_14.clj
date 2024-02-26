(ns api-league.specs.inline-response-200-14
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.inline-response-200-14-authors :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-14-data
  {
   (ds/opt :authors) (s/coll-of inline-response-200-14-authors-spec)
   })

(def inline-response-200-14-spec
  (ds/spec
    {:name ::inline-response-200-14
     :spec inline-response-200-14-data}))
