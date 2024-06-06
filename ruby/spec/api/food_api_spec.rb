=begin
#API League

#API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.2.0
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::FoodApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FoodApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::FoodApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FoodApi' do
    it 'should create an instance of FoodApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::FoodApi)
    end
  end

  # unit tests for compute_nutrition
  # Compute Nutrition
  # Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
  # @param ingredients A comma-separated list of the ingredients of the recipe.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :servings The number of servings the ingredients make. Nutrition is computed per serving.
  # @option opts [Boolean] :reduce_oils If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.
  # @return [ComputeNutrition200Response]
  describe 'compute_nutrition test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for retrieve_recipe_information
  # Retrieve Recipe Information
  # Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
  # @param id The id of the recipe to retrieve.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :add_wine_pairing Whether to pair a wine to the recipe.
  # @return [RetrieveRecipeInformation200Response]
  describe 'retrieve_recipe_information test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_recipes
  # Search Recipes
  # Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :query The search query.
  # @option opts [String] :cuisines The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;).
  # @option opts [String] :exclude_cuisines The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;).
  # @option opts [String] :meal_type The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink.
  # @option opts [String] :diet The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian.
  # @option opts [String] :intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered.
  # @option opts [String] :equipment The equipment required. Multiple values will be interpreted as &#39;OR&#39;.
  # @option opts [String] :include_ingredients A comma-separated list of ingredients that should/must be used in the recipes.
  # @option opts [String] :exclude_ingredients A comma-separated list of ingredients or ingredient types that the recipes must not contain.
  # @option opts [Boolean] :fill_ingredients Add information about the ingredients and whether they are used or missing in relation to the query.
  # @option opts [Boolean] :add_recipe_information If set to true, you get more information about the recipes returned.
  # @option opts [Integer] :max_time The maximum time in minutes it should take to prepare and cook the recipe.
  # @option opts [Integer] :min_servings The minimum amount of servings the recipe is for.
  # @option opts [Integer] :max_servings The maximum amount of servings the recipe is for.
  # @option opts [Float] :min_calories The minimum amount of calories the recipe must have per serving.
  # @option opts [Float] :max_calories The maximum amount of calories the recipe can have per serving.
  # @option opts [Float] :min_carbs The minimum amount of carbohydrates in grams the recipe must have per serving.
  # @option opts [Float] :max_carbs The maximum amount of carbohydrates in grams the recipe can have per serving.
  # @option opts [Float] :min_protein The minimum amount of protein in grams the recipe must have per serving.
  # @option opts [Float] :max_protein The maximum amount of protein in grams the recipe can have per serving.
  # @option opts [Float] :min_fat The minimum amount of fat in grams the recipe must have per serving.
  # @option opts [Float] :max_fat The maximum amount of fat in grams the recipe can have per serving.
  # @option opts [Float] :min_sugar The minimum amount of sugar in grams the recipe must have per serving.
  # @option opts [Float] :max_sugar The maximum amount of sugar in grams the recipe can have per serving.
  # @option opts [Float] :min_fiber The minimum amount of fiber in grams the recipe must have per serving.
  # @option opts [Float] :max_fiber The maximum amount of fiber in grams the recipe can have per serving.
  # @option opts [Float] :min_folate The minimum amount of folate in micrograms the recipe must have per serving.
  # @option opts [Float] :max_folate The maximum amount of folate in micrograms the recipe can have per serving.
  # @option opts [Float] :min_folic_acid The minimum amount of folic acid in micrograms the recipe must have per serving.
  # @option opts [Float] :max_folic_acid The maximum amount of folic acid in micrograms the recipe can have per serving.
  # @option opts [Float] :min_iodine The minimum amount of iodine in micrograms the recipe must have per serving.
  # @option opts [Float] :max_iodine The maximum amount of iodine in micrograms the recipe can have per serving.
  # @option opts [Float] :min_iron The minimum amount of iron in milligrams the recipe must have per serving.
  # @option opts [Float] :max_iron The maximum amount of iron in milligrams the recipe can have per serving.
  # @option opts [Float] :min_zinc The minimum amount of zinc in milligrams the recipe must have per serving.
  # @option opts [Float] :max_zinc The maximum amount of zinc in milligrams the recipe can have per serving.
  # @option opts [Float] :min_magnesium The minimum amount of magnesium in milligrams the recipe must have per serving.
  # @option opts [Float] :max_magnesium The maximum amount of magnesium in milligrams the recipe can have per serving.
  # @option opts [Float] :min_manganese The minimum amount of manganese in milligrams the recipe must have per serving.
  # @option opts [Float] :max_manganese The maximum amount of manganese in milligrams the recipe can have per serving.
  # @option opts [Float] :min_phosphorus The minimum amount of phosphorus in milligrams the recipe must have per serving.
  # @option opts [Float] :max_phosphorus The maximum amount of phosphorus in milligrams the recipe can have per serving.
  # @option opts [Float] :min_potassium The minimum amount of potassium in milligrams the recipe must have per serving.
  # @option opts [Float] :max_potassium The maximum amount of potassium in milligrams the recipe can have per serving.
  # @option opts [Float] :min_sodium The minimum amount of sodium in milligrams the recipe must have per serving.
  # @option opts [Float] :max_sodium The maximum amount of sodium in milligrams the recipe can have per serving.
  # @option opts [Float] :min_selenium The minimum amount of selenium in micrograms the recipe must have per serving.
  # @option opts [Float] :max_selenium The maximum amount of selenium in micrograms the recipe can have per serving.
  # @option opts [Float] :min_copper The minimum amount of copper in milligrams the recipe must have per serving.
  # @option opts [Float] :max_copper The maximum amount of copper in milligrams the recipe can have per serving.
  # @option opts [Float] :min_calcium The minimum amount of calcium in milligrams the recipe must have per serving.
  # @option opts [Float] :max_calcium The maximum amount of calcium in milligrams the recipe can have per serving.
  # @option opts [Float] :min_choline The minimum amount of choline in milligrams the recipe must have per serving.
  # @option opts [Float] :max_choline The maximum amount of choline in milligrams the recipe can have per serving.
  # @option opts [Float] :min_cholesterol The minimum amount of cholesterol in milligrams the recipe must have per serving.
  # @option opts [Float] :max_cholesterol The maximum amount of cholesterol in milligrams the recipe can have per serving.
  # @option opts [Float] :min_fluoride The minimum amount of fluoride in milligrams the recipe must have per serving.
  # @option opts [Float] :max_fluoride The maximum amount of fluoride in milligrams the recipe can have per serving.
  # @option opts [Float] :min_alcohol The minimum amount of alcohol in grams the recipe must have per serving.
  # @option opts [Float] :max_alcohol The maximum amount of alcohol in grams the recipe can have per serving.
  # @option opts [Float] :min_caffeine The minimum amount of caffeine in milligrams the recipe must have per serving.
  # @option opts [Float] :max_caffeine The maximum amount of caffeine in milligrams the recipe can have per serving.
  # @option opts [Float] :min_saturated_fat The minimum amount of saturated fat in grams the recipe must have per serving.
  # @option opts [Float] :max_saturated_fat The maximum amount of saturated fat in grams the recipe can have per serving.
  # @option opts [Float] :min_vitamin_a The minimum amount of Vitamin A in IU the recipe must have per serving.
  # @option opts [Float] :max_vitamin_a The maximum amount of Vitamin A in IU the recipe can have per serving.
  # @option opts [Float] :min_vitamin_c The minimum amount of Vitamin C in milligrams the recipe must have per serving.
  # @option opts [Float] :max_vitamin_c The maximum amount of Vitamin C in milligrams the recipe can have per serving.
  # @option opts [Float] :min_vitamin_d The minimum amount of Vitamin D in micrograms the recipe must have per serving.
  # @option opts [Float] :max_vitamin_d The maximum amount of Vitamin D in micrograms the recipe can have per serving.
  # @option opts [Float] :min_vitamin_e The minimum amount of Vitamin E in milligrams the recipe must have per serving.
  # @option opts [Float] :max_vitamin_e The maximum amount of Vitamin E in milligrams the recipe can have per serving.
  # @option opts [Float] :min_vitamin_k The minimum amount of Vitamin K in micrograms the recipe must have per serving.
  # @option opts [Float] :max_vitamin_k The maximum amount of Vitamin K in micrograms the recipe can have per serving.
  # @option opts [Float] :min_vitamin_b1 The minimum amount of Vitamin B1 in milligrams the recipe must have per serving.
  # @option opts [Float] :max_vitamin_b1 The maximum amount of Vitamin B1 in milligrams the recipe can have per serving.
  # @option opts [Float] :min_vitamin_b2 The minimum amount of Vitamin B2 in milligrams the recipe must have per serving.
  # @option opts [Float] :max_vitamin_b2 The maximum amount of Vitamin B2 in milligrams the recipe can have per serving.
  # @option opts [Float] :min_vitamin_b3 The minimum amount of Vitamin B3 in milligrams the recipe must have per serving.
  # @option opts [Float] :max_vitamin_b3 The maximum amount of Vitamin B3 in milligrams the recipe can have per serving.
  # @option opts [Float] :min_vitamin_b5 The minimum amount of Vitamin B5 in milligrams the recipe must have per serving.
  # @option opts [Float] :max_vitamin_b5 The maximum amount of Vitamin B5 in milligrams the recipe can have per serving.
  # @option opts [Float] :min_vitamin_b6 The minimum amount of Vitamin B6 in milligrams the recipe must have per serving.
  # @option opts [Float] :max_vitamin_b6 The maximum amount of Vitamin B6 in milligrams the recipe can have per serving.
  # @option opts [Float] :min_vitamin_b12 The minimum amount of Vitamin B12 in milligrams the recipe must have per serving.
  # @option opts [Float] :max_vitamin_b12 The maximum amount of Vitamin B12 in milligrams the recipe can have per serving.
  # @option opts [String] :sort The strategy to sort recipes by. See a full list of supported sorting options.
  # @option opts [String] :sort_direction Whether to sort ascending or descending (ASC or DESC).
  # @option opts [Integer] :offset The number of recipes to skip, between 0 and 900.
  # @option opts [Integer] :number The number of recipes, between 1 and 100.
  # @return [SearchRecipes200Response]
  describe 'search_recipes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_restaurants
  # Search Restaurants
  # Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
  # @param lat The latitude to search around.
  # @param lon The longitude to search around.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :query The search query.
  # @option opts [Integer] :distance The maximum distance of the restaurant in miles around the given location.
  # @option opts [Float] :budget The budget in USD for the meal.
  # @option opts [Float] :min_rating The minimum rating of the restaurants in range [0,5].
  # @option opts [String] :cuisine The cuisine that the restaurants should support.
  # @option opts [Boolean] :is_open Whether the restaurants have to be open now.
  # @option opts [Integer] :page The page of the results.
  # @option opts [String] :sort The sort parameter, one of: cheapest, fastest, rating, distance or relevance.
  # @return [SearchRestaurants200Response]
  describe 'search_restaurants test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
