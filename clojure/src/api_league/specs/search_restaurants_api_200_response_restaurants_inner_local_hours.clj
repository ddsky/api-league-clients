(ns api-league.specs.search-restaurants-api-200-response-restaurants-inner-local-hours
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [api-league.specs.search-restaurants-api-200-response-restaurants-inner-local-hours-operational :refer :all]
            [api-league.specs.search-restaurants-api-200-response-restaurants-inner-local-hours-operational :refer :all]
            [api-league.specs.search-restaurants-api-200-response-restaurants-inner-local-hours-operational :refer :all]
            [api-league.specs.search-restaurants-api-200-response-restaurants-inner-local-hours-operational :refer :all]
            )
  (:import (java.io File)))


(def search-restaurants-api-200-response-restaurants-inner-local-hours-data
  {
   (ds/opt :operational) search-restaurants-api-200-response-restaurants-inner-local-hours-operational-spec
   (ds/opt :delivery) search-restaurants-api-200-response-restaurants-inner-local-hours-operational-spec
   (ds/opt :pickup) search-restaurants-api-200-response-restaurants-inner-local-hours-operational-spec
   (ds/opt :dine_in) search-restaurants-api-200-response-restaurants-inner-local-hours-operational-spec
   })

(def search-restaurants-api-200-response-restaurants-inner-local-hours-spec
  (ds/spec
    {:name ::search-restaurants-api-200-response-restaurants-inner-local-hours
     :spec search-restaurants-api-200-response-restaurants-inner-local-hours-data}))
