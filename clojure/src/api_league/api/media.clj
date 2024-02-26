(ns api-league.api.media
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


(defn-spec detect-main-image-color-with-http-info any?
  "Detect Main Image Color
  Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF."
  [url string?]
  (check-required-params url)
  (call-api "/detect-color" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"url" url }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec detect-main-image-color (s/coll-of inline-response-200-29-spec)
  "Detect Main Image Color
  Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF."
  [url string?]
  (let [res (:data (detect-main-image-color-with-http-info url))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of inline-response-200-29-spec) res st/string-transformer)
       res)))


(defn-spec rescale-image-with-http-info any?
  "Rescale Image
  Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image."
  [url string?, width int?, height int?, crop boolean?]
  (check-required-params url width height crop)
  (call-api "/rescale-image" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"url" url "width" width "height" height "crop" crop }
             :form-params   {}
             :content-types []
             :accepts       ["application/octet-stream"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec rescale-image any?
  "Rescale Image
  Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image."
  [url string?, width int?, height int?, crop boolean?]
  (let [res (:data (rescale-image-with-http-info url width height crop))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec search-royalty-free-images-with-http-info any?
  "Search Royalty Free Images
  Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image."
  ([query string?, ] (search-royalty-free-images-with-http-info query nil))
  ([query string?, {:keys [number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/search-images" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-royalty-free-images inline-response-200-28-spec
  "Search Royalty Free Images
  Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image."
  ([query string?, ] (search-royalty-free-images query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-royalty-free-images-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-28-spec res st/string-transformer)
        res))))


