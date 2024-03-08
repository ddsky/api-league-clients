(ns api-league.specs.part-of-speech-tagging-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def part-of-speech-tagging-200-response-data
  {
   (ds/opt :tagged_text) string?
   })

(def part-of-speech-tagging-200-response-spec
  (ds/spec
    {:name ::part-of-speech-tagging-200-response
     :spec part-of-speech-tagging-200-response-data}))
