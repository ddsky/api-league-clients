(ns api-league.specs.tag-part-of-speech-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def tag-part-of-speech-200-response-data
  {
   (ds/opt :tagged_text) string?
   })

(def tag-part-of-speech-200-response-spec
  (ds/spec
    {:name ::tag-part-of-speech-200-response
     :spec tag-part-of-speech-200-response-data}))
