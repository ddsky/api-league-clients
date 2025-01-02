(ns api-league.specs.verify-email-address-api-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def verify-email-address-api-200-response-data
  {
   (ds/opt :email) string?
   (ds/opt :domain) string?
   (ds/opt :first_name) string?
   (ds/opt :middle_name) string?
   (ds/opt :last_name) string?
   (ds/opt :full_name) string?
   (ds/opt :username) string?
   (ds/opt :image) string?
   (ds/opt :result) string?
   (ds/opt :disposable) boolean?
   (ds/opt :accept_all) boolean?
   (ds/opt :free_provider) boolean?
   })

(def verify-email-address-api-200-response-spec
  (ds/spec
    {:name ::verify-email-address-api-200-response
     :spec verify-email-address-api-200-response-data}))
