(ns api-league.api.storage
  (:require [api-league.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [api-league.specs.inline-response-200-19-skimmability-subscores :refer :all]
            [api-league.specs.inline-response-200-19-skimmability :refer :all]
            [api-league.specs.inline-response-200-19-skimmability-mainscores :refer :all]
            [api-league.specs.inline-response-200-19-readability-mainscores :refer :all]
            [api-league.specs.inline-response-200-32 :refer :all]
            [api-league.specs.inline-response-200-31 :refer :all]
            [api-league.specs.inline-response-200-30 :refer :all]
            [api-league.specs.inline-response-200-books :refer :all]
            [api-league.specs.inline-response-200-19-interestingness :refer :all]
            [api-league.specs.inline-response-200-28-images :refer :all]
            [api-league.specs.inline-response-200-29 :refer :all]
            [api-league.specs.inline-response-200-28 :refer :all]
            [api-league.specs.inline-response-200-27 :refer :all]
            [api-league.specs.inline-response-200-2 :refer :all]
            [api-league.specs.inline-response-200-26 :refer :all]
            [api-league.specs.inline-response-200-1 :refer :all]
            [api-league.specs.inline-response-200-25 :refer :all]
            [api-league.specs.inline-response-200-24 :refer :all]
            [api-league.specs.inline-response-200-23 :refer :all]
            [api-league.specs.inline-response-200-22 :refer :all]
            [api-league.specs.inline-response-200-21 :refer :all]
            [api-league.specs.inline-response-200-27-entities :refer :all]
            [api-league.specs.inline-response-200-20 :refer :all]
            [api-league.specs.inline-response-200-9 :refer :all]
            [api-league.specs.inline-response-200-8 :refer :all]
            [api-league.specs.inline-response-200-7 :refer :all]
            [api-league.specs.inline-response-200-6 :refer :all]
            [api-league.specs.inline-response-200-5 :refer :all]
            [api-league.specs.inline-response-200-7-images :refer :all]
            [api-league.specs.inline-response-200-4 :refer :all]
            [api-league.specs.inline-response-200-2-news :refer :all]
            [api-league.specs.inline-response-200-3 :refer :all]
            [api-league.specs.inline-response-200 :refer :all]
            [api-league.specs.inline-response-200-19-style-subscores :refer :all]
            [api-league.specs.inline-response-200-18-sentences :refer :all]
            [api-league.specs.inline-response-200-19 :refer :all]
            [api-league.specs.inline-response-200-18 :refer :all]
            [api-league.specs.inline-response-200-17 :refer :all]
            [api-league.specs.inline-response-200-16 :refer :all]
            [api-league.specs.inline-response-200-19-readability-subscores :refer :all]
            [api-league.specs.inline-response-200-15 :refer :all]
            [api-league.specs.inline-response-200-14 :refer :all]
            [api-league.specs.inline-response-200-13 :refer :all]
            [api-league.specs.inline-response-200-12 :refer :all]
            [api-league.specs.inline-response-200-11 :refer :all]
            [api-league.specs.inline-response-200-10 :refer :all]
            [api-league.specs.inline-response-200-19-interestingness-subscores :refer :all]
            [api-league.specs.inline-response-200-15-results :refer :all]
            [api-league.specs.inline-response-200-5-memes :refer :all]
            [api-league.specs.inline-response-200-4-jokes :refer :all]
            [api-league.specs.inline-response-200-28-license :refer :all]
            [api-league.specs.inline-response-200-18-document :refer :all]
            [api-league.specs.inline-response-200-19-readability :refer :all]
            [api-league.specs.inline-response-200-14-authors :refer :all]
            [api-league.specs.inline-response-200-21-dates :refer :all]
            [api-league.specs.inline-response-200-19-style :refer :all]
            )
  (:import (java.io File)))


(defn-spec read-key-value-from-store-with-http-info any?
  "Read Key Value from Store
  Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations."
  [key string?]
  (check-required-params key)
  (call-api "/read-key-value" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"key" key }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec read-key-value-from-store inline-response-200-31-spec
  "Read Key Value from Store
  Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations."
  [key string?]
  (let [res (:data (read-key-value-from-store-with-http-info key))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-31-spec res st/string-transformer)
       res)))


(defn-spec store-key-value-get-with-http-info any?
  "Store Key Value (GET)
  Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations."
  [key string?, value string?]
  (check-required-params key value)
  (call-api "/store-key-value" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"key" key "value" value }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec store-key-value-get inline-response-200-32-spec
  "Store Key Value (GET)
  Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations."
  [key string?, value string?]
  (let [res (:data (store-key-value-get-with-http-info key value))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-32-spec res st/string-transformer)
       res)))


