(ns api-league.api.web
  (:require [api-league.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [api-league.specs.search-restaurants-200-response-restaurants-inner-local-hours :refer :all]
            [api-league.specs.random-riddle-200-response :refer :all]
            [api-league.specs.search-gifs-200-response-images-inner :refer :all]
            [api-league.specs.search-memes-200-response-memes-inner :refer :all]
            [api-league.specs.generate-nonsense-word-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-taste :refer :all]
            [api-league.specs.compute-nutrition-200-response-ingredient-breakdown-inner :refer :all]
            [api-league.specs.random-meme-200-response :refer :all]
            [api-league.specs.random-trivia-200-response :refer :all]
            [api-league.specs.top-news-200-response-top-news-inner :refer :all]
            [api-league.specs.extract-news-200-response :refer :all]
            [api-league.specs.search-news-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-nutrition-ingredient-breakdown-inner :refer :all]
            [api-league.specs.search-recipes-200-response-recipes-inner-nutrition :refer :all]
            [api-league.specs.search-restaurants-200-response-restaurants-inner-address :refer :all]
            [api-league.specs.extract-dates-200-response :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition-ingredient-breakdown-inner-nutrients-inner :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-ingredients-inner-measures-metric :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-instructions-inner :refer :all]
            [api-league.specs.score-text-200-response :refer :all]
            [api-league.specs.detect-main-image-color-200-response-inner :refer :all]
            [api-league.specs.search-web-200-response :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-ingredients-inner-measures :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-instructions-inner :refer :all]
            [api-league.specs.random-poem-200-response :refer :all]
            [api-league.specs.score-text-200-response-interestingness :refer :all]
            [api-league.specs.search-restaurants-200-response :refer :all]
            [api-league.specs.pluralize-word-200-response :refer :all]
            [api-league.specs.find-similar-books-200-response :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition-nutrients-inner :refer :all]
            [api-league.specs.search-gifs-200-response :refer :all]
            [api-league.specs.score-text-200-response-skimmability :refer :all]
            [api-league.specs.search-books-200-response :refer :all]
            [api-league.specs.search-royalty-free-images-200-response-images-inner-license :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-instructions-inner-steps-inner :refer :all]
            [api-league.specs.search-recipes-200-response :refer :all]
            [api-league.specs.store-key-value-get-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-dietary-properties :refer :all]
            [api-league.specs.search-icons-200-response :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner :refer :all]
            [api-league.specs.score-text-200-response-interestingness-subscores :refer :all]
            [api-league.specs.score-text-200-response-skimmability-subscores :refer :all]
            [api-league.specs.search-books-200-response-books-inner-inner :refer :all]
            [api-league.specs.search-restaurants-200-response-restaurants-inner :refer :all]
            [api-league.specs.extract-content-from-a-web-page-200-response :refer :all]
            [api-league.specs.compute-nutrition-200-response :refer :all]
            [api-league.specs.verify-email-address-200-response :refer :all]
            [api-league.specs.score-text-200-response-readability :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-nutrition :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-credits :refer :all]
            [api-league.specs.extract-news-200-response-images-inner :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition-caloric-breakdown :refer :all]
            [api-league.specs.score-text-200-response-style :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition-ingredient-breakdown-inner :refer :all]
            [api-league.specs.extract-entities-200-response-entities-inner :refer :all]
            [api-league.specs.score-readability-200-response :refer :all]
            [api-league.specs.extract-publish-date-200-response :refer :all]
            [api-league.specs.score-text-200-response-readability-mainscores :refer :all]
            [api-league.specs.search-jokes-200-response-jokes-inner :refer :all]
            [api-league.specs.search-restaurants-200-response-restaurants-inner-local-hours-operational :refer :all]
            [api-league.specs.detect-gender-by-name-200-response :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition-flavonoids-inner :refer :all]
            [api-league.specs.correct-spelling-200-response :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner :refer :all]
            [api-league.specs.extract-news-200-response-videos-inner :refer :all]
            [api-league.specs.singularize-word-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-ingredients-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-ingredients-inner-measures :refer :all]
            [api-league.specs.tag-part-of-speech-200-response :refer :all]
            [api-league.specs.extract-authors-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-scores :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-instructions-inner-steps-inner :refer :all]
            [api-league.specs.search-memes-200-response :refer :all]
            [api-league.specs.search-jokes-200-response :refer :all]
            [api-league.specs.search-recipes-200-response-recipes-inner :refer :all]
            [api-league.specs.score-text-200-response-readability-subscores :refer :all]
            [api-league.specs.convert-units-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-credits :refer :all]
            [api-league.specs.score-text-200-response-skimmability-mainscores :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response :refer :all]
            [api-league.specs.top-news-200-response-top-news-inner-news-inner :refer :all]
            [api-league.specs.compute-nutrition-200-response-ingredient-breakdown-inner-nutrients-inner :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition :refer :all]
            [api-league.specs.top-news-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-200-response-times :refer :all]
            [api-league.specs.search-royalty-free-images-200-response-images-inner :refer :all]
            [api-league.specs.search-news-200-response-news-inner :refer :all]
            [api-league.specs.extract-entities-200-response :refer :all]
            [api-league.specs.search-royalty-free-images-200-response :refer :all]
            [api-league.specs.random-quote-200-response :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-ingredients-inner-measures-us :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-ingredients-inner :refer :all]
            [api-league.specs.search-drinks-200-response-drinks-inner-nutrition-weight-per-serving :refer :all]
            [api-league.specs.extract-dates-200-response-dates-inner :refer :all]
            [api-league.specs.search-recipes-200-response-recipes-inner-nutrition-nutrients-inner :refer :all]
            [api-league.specs.search-web-200-response-results-inner :refer :all]
            [api-league.specs.score-text-200-response-style-subscores :refer :all]
            [api-league.specs.list-word-synonyms-200-response :refer :all]
            [api-league.specs.read-key-value-from-store-200-response :refer :all]
            [api-league.specs.retrieve-page-rank-200-response :refer :all]
            [api-league.specs.stem-text-200-response :refer :all]
            [api-league.specs.search-drinks-200-response :refer :all]
            [api-league.specs.extract-authors-200-response-authors-inner :refer :all]
            )
  (:import (java.io File)))


(defn-spec extract-authors-with-http-info any?
  "Extract Authors
  Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available."
  [url string?]
  (check-required-params url)
  (call-api "/extract-authors" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"url" url }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec extract-authors extract-authors-200-response-spec
  "Extract Authors
  Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available."
  [url string?]
  (let [res (:data (extract-authors-with-http-info url))]
    (if (:decode-models *api-context*)
       (st/decode extract-authors-200-response-spec res st/string-transformer)
       res)))


(defn-spec extract-content-from-a-web-page-with-http-info any?
  "Extract Content from a Web Page
  Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format."
  [url string?]
  (check-required-params url)
  (call-api "/extract-content" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"url" url }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec extract-content-from-a-web-page extract-content-from-a-web-page-200-response-spec
  "Extract Content from a Web Page
  Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format."
  [url string?]
  (let [res (:data (extract-content-from-a-web-page-with-http-info url))]
    (if (:decode-models *api-context*)
       (st/decode extract-content-from-a-web-page-200-response-spec res st/string-transformer)
       res)))


(defn-spec extract-publish-date-with-http-info any?
  "Extract Publish Date
  Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD."
  [url string?]
  (check-required-params url)
  (call-api "/extract-publish-date" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"url" url }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec extract-publish-date extract-publish-date-200-response-spec
  "Extract Publish Date
  Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD."
  [url string?]
  (let [res (:data (extract-publish-date-with-http-info url))]
    (if (:decode-models *api-context*)
       (st/decode extract-publish-date-200-response-spec res st/string-transformer)
       res)))


(defn-spec retrieve-page-rank-with-http-info any?
  "Retrieve Page Rank
  This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank."
  [domain string?]
  (check-required-params domain)
  (call-api "/retrieve-page-rank" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"domain" domain }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec retrieve-page-rank retrieve-page-rank-200-response-spec
  "Retrieve Page Rank
  This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank."
  [domain string?]
  (let [res (:data (retrieve-page-rank-with-http-info domain))]
    (if (:decode-models *api-context*)
       (st/decode retrieve-page-rank-200-response-spec res st/string-transformer)
       res)))


(defn-spec search-web-with-http-info any?
  "Search Web
  Search the web for a given query. The API returns a list of results with the title, summary, and URL."
  ([query string?, ] (search-web-with-http-info query nil))
  ([query string?, {:keys [number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/search-web" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-web search-web-200-response-spec
  "Search Web
  Search the web for a given query. The API returns a list of results with the title, summary, and URL."
  ([query string?, ] (search-web query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-web-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-web-200-response-spec res st/string-transformer)
        res))))


(defn-spec verify-email-address-with-http-info any?
  "Verify Email Address
  This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail."
  [email string?]
  (check-required-params email)
  (call-api "/verify-email" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"email" email }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec verify-email-address verify-email-address-200-response-spec
  "Verify Email Address
  This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail."
  [email string?]
  (let [res (:data (verify-email-address-with-http-info email))]
    (if (:decode-models *api-context*)
       (st/decode verify-email-address-200-response-spec res st/string-transformer)
       res)))


