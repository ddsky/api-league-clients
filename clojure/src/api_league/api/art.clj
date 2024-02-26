(ns api-league.api.art
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


(defn-spec image-to-ascii-art-by-url-with-http-info any?
  "Image to Ascii Art by URL
  Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter."
  ([url string?, ] (image-to-ascii-art-by-url-with-http-info url nil))
  ([url string?, {:keys [width height]} (s/map-of keyword? any?)]
   (check-required-params url)
   (call-api "/convert-image-to-ascii-txt" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"url" url "width" width "height" height }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec image-to-ascii-art-by-url string?
  "Image to Ascii Art by URL
  Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter."
  ([url string?, ] (image-to-ascii-art-by-url url nil))
  ([url string?, optional-params any?]
   (let [res (:data (image-to-ascii-art-by-url-with-http-info url optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec random-poem-with-http-info any?
  "Random Poem
  Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines)."
  ([] (random-poem-with-http-info nil))
  ([{:keys [min-lines max-lines]} (s/map-of keyword? any?)]
   (call-api "/retrieve-random-poem" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"min-lines" min-lines "max-lines" max-lines }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec random-poem inline-response-200-11-spec
  "Random Poem
  Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines)."
  ([] (random-poem nil))
  ([optional-params any?]
   (let [res (:data (random-poem-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-11-spec res st/string-transformer)
        res))))


