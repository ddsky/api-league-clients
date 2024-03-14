(ns api-league.specs.search-restaurants-200-response-restaurants-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-restaurants-200-response-restaurants-inner-address :refer :all]
            [api-league.specs.search-restaurants-200-response-restaurants-inner-local-hours :refer :all]
            )
  (:import (java.io File)))


(def search-restaurants-200-response-restaurants-inner-data
  {
   (ds/opt :offers_third_party_delivery) boolean?
   (ds/opt :address) search-restaurants-200-response-restaurants-inner-address-spec
   (ds/opt :supports_upc_codes) boolean?
   (ds/opt :is_open) boolean?
   (ds/opt :description) string?
   (ds/opt :weighted_rating_value) int?
   (ds/opt :type) string?
   (ds/opt :offers_first_party_delivery) boolean?
   (ds/opt :aggregated_rating_count) int?
   (ds/opt :pickup_enabled) boolean?
   (ds/opt :cuisines) (s/coll-of string?)
   (ds/opt :miles) float?
   (ds/opt :dollar_signs) int?
   (ds/opt :delivery_enabled) boolean?
   (ds/opt :name) string?
   (ds/opt :phone_number) float?
   (ds/opt :_id) string?
   (ds/opt :local_hours) search-restaurants-200-response-restaurants-inner-local-hours-spec
   })

(def search-restaurants-200-response-restaurants-inner-spec
  (ds/spec
    {:name ::search-restaurants-200-response-restaurants-inner
     :spec search-restaurants-200-response-restaurants-inner-data}))
