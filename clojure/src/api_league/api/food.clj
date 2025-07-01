(ns api-league.api.food
  (:require [api-league.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-metric :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-flavonoids-inner :refer :all]
            [api-league.specs.random-riddle-api-200-response :refer :all]
            [api-league.specs.search-games-api-200-response-sorting-options-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner-measures-us :refer :all]
            [api-league.specs.search-memes-api-200-response-memes-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-ingredients-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-instructions-inner :refer :all]
            [api-league.specs.search-news-api-200-response-news-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-nutrition-ingredient-breakdown-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-taste :refer :all]
            [api-league.specs.search-web-api-200-response-results-inner :refer :all]
            [api-league.specs.retrieve-game-by-id-200-response-rating :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-dietary-properties :refer :all]
            [api-league.specs.search-restaurants-api-200-response-restaurants-inner-address :refer :all]
            [api-league.specs.score-text-api-200-response-style-subscores :refer :all]
            [api-league.specs.extract-entities-api-200-response-entities-inner :refer :all]
            [api-league.specs.singularize-word-api-200-response :refer :all]
            [api-league.specs.detect-language-api-200-response-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response :refer :all]
            [api-league.specs.search-web-api-200-response :refer :all]
            [api-league.specs.compute-nutrition-api-200-response :refer :all]
            [api-league.specs.score-text-api-200-response-readability-mainscores :refer :all]
            [api-league.specs.score-text-api-200-response-readability :refer :all]
            [api-league.specs.read-key-value-from-store-api-200-response :refer :all]
            [api-league.specs.detect-gender-by-name-api-200-response :refer :all]
            [api-league.specs.search-restaurants-api-200-response-restaurants-inner :refer :all]
            [api-league.specs.compute-nutrition-api-200-response-ingredient-breakdown-inner-nutrients-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-ingredient-breakdown-inner :refer :all]
            [api-league.specs.search-games-api-200-response-filter-options-inner :refer :all]
            [api-league.specs.top-news-api-200-response-top-news-inner :refer :all]
            [api-league.specs.search-restaurants-api-200-response-restaurants-inner-local-hours-operational :refer :all]
            [api-league.specs.find-similar-books-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-caloric-breakdown :refer :all]
            [api-league.specs.tag-part-of-speech-api-200-response :refer :all]
            [api-league.specs.search-gifs-api-200-response-images-inner :refer :all]
            [api-league.specs.score-text-api-200-response-interestingness-subscores :refer :all]
            [api-league.specs.generate-nonsense-word-api-200-response :refer :all]
            [api-league.specs.search-games-api-200-response-results-inner-platforms-inner :refer :all]
            [api-league.specs.correct-spelling-api-200-response :refer :all]
            [api-league.specs.score-text-api-200-response-skimmability-mainscores :refer :all]
            [api-league.specs.retrieve-game-by-id-200-response-official-stores-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition :refer :all]
            [api-league.specs.retrieve-game-by-id-200-response :refer :all]
            [api-league.specs.extract-news-api-200-response :refer :all]
            [api-league.specs.top-news-api-200-response :refer :all]
            [api-league.specs.score-text-api-200-response-style :refer :all]
            [api-league.specs.extract-publish-date-api-200-response :refer :all]
            [api-league.specs.search-royalty-free-images-api-200-response-images-inner :refer :all]
            [api-league.specs.detect-sentiment-api-200-response :refer :all]
            [api-league.specs.find-similar-games-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-ingredient-breakdown-inner-nutrients-inner :refer :all]
            [api-league.specs.score-readability-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-weight-per-serving :refer :all]
            [api-league.specs.detect-sentiment-api-200-response-sentences-inner :refer :all]
            [api-league.specs.search-games-api-200-response-results-inner :refer :all]
            [api-league.specs.search-recipes-api-200-response-recipes-inner-nutrition :refer :all]
            [api-league.specs.list-word-synonyms-api-200-response :refer :all]
            [api-league.specs.stem-text-api-200-response :refer :all]
            [api-league.specs.find-similar-games-api-200-response-results-inner :refer :all]
            [api-league.specs.search-royalty-free-images-api-200-response :refer :all]
            [api-league.specs.extract-news-api-200-response-images-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner-ingredients-inner :refer :all]
            [api-league.specs.extract-content-from-a-web-page-api-200-response :refer :all]
            [api-league.specs.retrieve-game-by-id-200-response-playtime :refer :all]
            [api-league.specs.search-jokes-api-200-response :refer :all]
            [api-league.specs.search-recipes-api-200-response-recipes-inner :refer :all]
            [api-league.specs.detect-main-image-color-api-200-response-inner :refer :all]
            [api-league.specs.search-games-api-200-response-filter-options-inner-values-inner :refer :all]
            [api-league.specs.search-books-api-200-response-books-inner-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-nutrition :refer :all]
            [api-league.specs.search-royalty-free-images-api-200-response-images-inner-license :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-credits :refer :all]
            [api-league.specs.extract-news-api-200-response-videos-inner :refer :all]
            [api-league.specs.search-restaurants-api-200-response-restaurants-inner-local-hours :refer :all]
            [api-league.specs.search-games-api-200-response-active-filter-options-inner-values-inner :refer :all]
            [api-league.specs.extract-dates-api-200-response-dates-inner :refer :all]
            [api-league.specs.store-key-value-getapi-200-response :refer :all]
            [api-league.specs.search-jokes-api-200-response-jokes-inner :refer :all]
            [api-league.specs.random-poem-api-200-response :refer :all]
            [api-league.specs.retrieve-page-rank-api-200-response :refer :all]
            [api-league.specs.score-text-api-200-response-skimmability :refer :all]
            [api-league.specs.search-news-api-200-response :refer :all]
            [api-league.specs.detect-sentiment-api-200-response-document :refer :all]
            [api-league.specs.random-quote-api-200-response :refer :all]
            [api-league.specs.search-games-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-instructions-inner-steps-inner :refer :all]
            [api-league.specs.verify-email-address-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner-measures :refer :all]
            [api-league.specs.retrieve-game-by-id-200-response-offers-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response :refer :all]
            [api-league.specs.convert-units-api-200-response :refer :all]
            [api-league.specs.extract-dates-api-200-response :refer :all]
            [api-league.specs.vector-search-api-200-response-vectors-inner :refer :all]
            [api-league.specs.random-trivia-api-200-response :refer :all]
            [api-league.specs.extract-authors-api-200-response-authors-inner :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-instructions-inner :refer :all]
            [api-league.specs.search-gifs-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-credits :refer :all]
            [api-league.specs.search-restaurants-api-200-response :refer :all]
            [api-league.specs.extract-authors-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-nutrition-nutrients-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-scores :refer :all]
            [api-league.specs.score-text-api-200-response-skimmability-subscores :refer :all]
            [api-league.specs.search-books-api-200-response :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-instructions-inner-steps-inner :refer :all]
            [api-league.specs.score-text-api-200-response-readability-subscores :refer :all]
            [api-league.specs.retrieve-game-by-id-200-response-offers-inner-price :refer :all]
            [api-league.specs.compute-nutrition-api-200-response-ingredient-breakdown-inner :refer :all]
            [api-league.specs.search-memes-api-200-response :refer :all]
            [api-league.specs.extract-entities-api-200-response :refer :all]
            [api-league.specs.search-recipes-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner-ingredients-inner :refer :all]
            [api-league.specs.pluralize-word-api-200-response :refer :all]
            [api-league.specs.retrieve-artwork-by-id-200-response :refer :all]
            [api-league.specs.search-icons-api-200-response :refer :all]
            [api-league.specs.random-meme-api-200-response :refer :all]
            [api-league.specs.search-games-api-200-response-active-filter-options-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-times :refer :all]
            [api-league.specs.vector-search-api-200-response :refer :all]
            [api-league.specs.search-drinks-api-200-response-drinks-inner :refer :all]
            [api-league.specs.retrieve-recipe-information-api-200-response-ingredients-inner-measures :refer :all]
            [api-league.specs.score-text-api-200-response :refer :all]
            [api-league.specs.top-news-api-200-response-top-news-inner-news-inner :refer :all]
            [api-league.specs.search-recipes-api-200-response-recipes-inner-nutrition-nutrients-inner :refer :all]
            [api-league.specs.score-text-api-200-response-interestingness :refer :all]
            [api-league.specs.search-games-api-200-response-results-inner-rating :refer :all]
            [api-league.specs.art-search-api-200-response :refer :all]
            )
  (:import (java.io File)))


(defn-spec compute-nutrition-api-with-http-info any?
  "Compute Nutrition API
  Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score."
  ([ingredients string?, ] (compute-nutrition-api-with-http-info ingredients nil))
  ([ingredients string?, {:keys [servings reduce-oils]} (s/map-of keyword? any?)]
   (check-required-params ingredients)
   (call-api "/compute-nutrition" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"ingredients" ingredients "servings" servings "reduce-oils" reduce-oils }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec compute-nutrition-api compute-nutrition-api-200-response-spec
  "Compute Nutrition API
  Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score."
  ([ingredients string?, ] (compute-nutrition-api ingredients nil))
  ([ingredients string?, optional-params any?]
   (let [res (:data (compute-nutrition-api-with-http-info ingredients optional-params))]
     (if (:decode-models *api-context*)
        (st/decode compute-nutrition-api-200-response-spec res st/string-transformer)
        res))))


(defn-spec retrieve-recipe-information-api-with-http-info any?
  "Retrieve Recipe Information API
  Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more."
  ([id int?, ] (retrieve-recipe-information-api-with-http-info id nil))
  ([id int?, {:keys [add-wine-pairing]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/retrieve-recipe" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"id" id "add-wine-pairing" add-wine-pairing }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec retrieve-recipe-information-api retrieve-recipe-information-api-200-response-spec
  "Retrieve Recipe Information API
  Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more."
  ([id int?, ] (retrieve-recipe-information-api id nil))
  ([id int?, optional-params any?]
   (let [res (:data (retrieve-recipe-information-api-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode retrieve-recipe-information-api-200-response-spec res st/string-transformer)
        res))))


(defn-spec search-drinks-api-with-http-info any?
  "Search Drinks API
  Search for drinks by title, ingredients, flavor, type of glass, alcohol content, and more."
  ([] (search-drinks-api-with-http-info nil))
  ([{:keys [query glass-types flavors diet include-ingredients exclude-ingredients min-calories max-calories min-carbs max-carbs min-protein max-protein min-fat max-fat min-alcohol-percent max-alcohol-percent min-caffeine max-caffeine sort sort-direction offset number]} (s/map-of keyword? any?)]
   (call-api "/search-drinks" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "glass-types" glass-types "flavors" flavors "diet" diet "include-ingredients" include-ingredients "exclude-ingredients" exclude-ingredients "min-calories" min-calories "max-calories" max-calories "min-carbs" min-carbs "max-carbs" max-carbs "min-protein" min-protein "max-protein" max-protein "min-fat" min-fat "max-fat" max-fat "min-alcohol-percent" min-alcohol-percent "max-alcohol-percent" max-alcohol-percent "min-caffeine" min-caffeine "max-caffeine" max-caffeine "sort" sort "sort-direction" sort-direction "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-drinks-api search-drinks-api-200-response-spec
  "Search Drinks API
  Search for drinks by title, ingredients, flavor, type of glass, alcohol content, and more."
  ([] (search-drinks-api nil))
  ([optional-params any?]
   (let [res (:data (search-drinks-api-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-drinks-api-200-response-spec res st/string-transformer)
        res))))


(defn-spec search-recipes-api-with-http-info any?
  "Search Recipes API
  Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more."
  ([] (search-recipes-api-with-http-info nil))
  ([{:keys [query cuisines exclude-cuisines meal-type diet intolerances equipment include-ingredients exclude-ingredients fill-ingredients add-recipe-information max-time min-servings max-servings min-calories max-calories min-carbs max-carbs min-protein max-protein min-fat max-fat min-sugar max-sugar min-fiber max-fiber min-folate max-folate min-folic-acid max-folic-acid min-iodine max-iodine min-iron max-iron min-zinc max-zinc min-magnesium max-magnesium min-manganese max-manganese min-phosphorus max-phosphorus min-potassium max-potassium min-sodium max-sodium min-selenium max-selenium min-copper max-copper min-calcium max-calcium min-choline max-choline min-cholesterol max-cholesterol min-fluoride max-fluoride min-alcohol max-alcohol min-caffeine max-caffeine min-saturated-fat max-saturated-fat min-vitamin-a max-vitamin-a min-vitamin-c max-vitamin-c min-vitamin-d max-vitamin-d min-vitamin-e max-vitamin-e min-vitamin-k max-vitamin-k min-vitamin-b1 max-vitamin-b1 min-vitamin-b2 max-vitamin-b2 min-vitamin-b3 max-vitamin-b3 min-vitamin-b5 max-vitamin-b5 min-vitamin-b6 max-vitamin-b6 min-vitamin-b12 max-vitamin-b12 sort sort-direction offset number]} (s/map-of keyword? any?)]
   (call-api "/search-recipes" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "cuisines" cuisines "exclude-cuisines" exclude-cuisines "meal-type" meal-type "diet" diet "intolerances" intolerances "equipment" equipment "include-ingredients" include-ingredients "exclude-ingredients" exclude-ingredients "fill-ingredients" fill-ingredients "add-recipe-information" add-recipe-information "max-time" max-time "min-servings" min-servings "max-servings" max-servings "min-calories" min-calories "max-calories" max-calories "min-carbs" min-carbs "max-carbs" max-carbs "min-protein" min-protein "max-protein" max-protein "min-fat" min-fat "max-fat" max-fat "min-sugar" min-sugar "max-sugar" max-sugar "min-fiber" min-fiber "max-fiber" max-fiber "min-folate" min-folate "max-folate" max-folate "min-folic-acid" min-folic-acid "max-folic-acid" max-folic-acid "min-iodine" min-iodine "max-iodine" max-iodine "min-iron" min-iron "max-iron" max-iron "min-zinc" min-zinc "max-zinc" max-zinc "min-magnesium" min-magnesium "max-magnesium" max-magnesium "min-manganese" min-manganese "max-manganese" max-manganese "min-phosphorus" min-phosphorus "max-phosphorus" max-phosphorus "min-potassium" min-potassium "max-potassium" max-potassium "min-sodium" min-sodium "max-sodium" max-sodium "min-selenium" min-selenium "max-selenium" max-selenium "min-copper" min-copper "max-copper" max-copper "min-calcium" min-calcium "max-calcium" max-calcium "min-choline" min-choline "max-choline" max-choline "min-cholesterol" min-cholesterol "max-cholesterol" max-cholesterol "min-fluoride" min-fluoride "max-fluoride" max-fluoride "min-alcohol" min-alcohol "max-alcohol" max-alcohol "min-caffeine" min-caffeine "max-caffeine" max-caffeine "min-saturated-fat" min-saturated-fat "max-saturated-fat" max-saturated-fat "min-vitamin-a" min-vitamin-a "max-vitamin-a" max-vitamin-a "min-vitamin-c" min-vitamin-c "max-vitamin-c" max-vitamin-c "min-vitamin-d" min-vitamin-d "max-vitamin-d" max-vitamin-d "min-vitamin-e" min-vitamin-e "max-vitamin-e" max-vitamin-e "min-vitamin-k" min-vitamin-k "max-vitamin-k" max-vitamin-k "min-vitamin-b1" min-vitamin-b1 "max-vitamin-b1" max-vitamin-b1 "min-vitamin-b2" min-vitamin-b2 "max-vitamin-b2" max-vitamin-b2 "min-vitamin-b3" min-vitamin-b3 "max-vitamin-b3" max-vitamin-b3 "min-vitamin-b5" min-vitamin-b5 "max-vitamin-b5" max-vitamin-b5 "min-vitamin-b6" min-vitamin-b6 "max-vitamin-b6" max-vitamin-b6 "min-vitamin-b12" min-vitamin-b12 "max-vitamin-b12" max-vitamin-b12 "sort" sort "sort-direction" sort-direction "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-recipes-api search-recipes-api-200-response-spec
  "Search Recipes API
  Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more."
  ([] (search-recipes-api nil))
  ([optional-params any?]
   (let [res (:data (search-recipes-api-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-recipes-api-200-response-spec res st/string-transformer)
        res))))


(defn-spec search-restaurants-api-with-http-info any?
  "Search Restaurants API
  Search through thousands of restaurants (in North America) by location, cuisine, budget, and more."
  ([lat float?, lon float?, ] (search-restaurants-api-with-http-info lat lon nil))
  ([lat float?, lon float?, {:keys [query distance budget min-rating cuisine is-open page sort]} (s/map-of keyword? any?)]
   (check-required-params lat lon)
   (call-api "/search-restaurants" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "lat" lat "lon" lon "distance" distance "budget" budget "min-rating" min-rating "cuisine" cuisine "is-open" is-open "page" page "sort" sort }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-restaurants-api search-restaurants-api-200-response-spec
  "Search Restaurants API
  Search through thousands of restaurants (in North America) by location, cuisine, budget, and more."
  ([lat float?, lon float?, ] (search-restaurants-api lat lon nil))
  ([lat float?, lon float?, optional-params any?]
   (let [res (:data (search-restaurants-api-with-http-info lat lon optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-restaurants-api-200-response-spec res st/string-transformer)
        res))))


