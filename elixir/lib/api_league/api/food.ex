# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Api.Food do
  @moduledoc """
  API calls for all endpoints tagged `Food`.
  """

  alias APILeague.Connection
  import APILeague.RequestBuilder

  @doc """
  Compute Nutrition
  Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `ingredients` (String.t): A comma-separated list of the ingredients of the recipe.
  - `opts` (keyword): Optional parameters
    - `:servings` (integer()): The number of servings the ingredients make. Nutrition is computed per serving.
    - `:"reduce-oils"` (boolean()): If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.

  ### Returns

  - `{:ok, APILeague.Model.ComputeNutrition200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec compute_nutrition(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, APILeague.Model.ComputeNutrition200Response.t} | {:error, Tesla.Env.t}
  def compute_nutrition(connection, ingredients, opts \\ []) do
    optional_params = %{
      :servings => :query,
      :"reduce-oils" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/compute-nutrition")
      |> add_param(:query, :ingredients, ingredients)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.ComputeNutrition200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Retrieve Recipe Information
  Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `id` (integer()): The id of the recipe to retrieve.
  - `opts` (keyword): Optional parameters
    - `:"add-wine-pairing"` (boolean()): Whether to pair a wine to the recipe.

  ### Returns

  - `{:ok, APILeague.Model.RetrieveRecipeInformation200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec retrieve_recipe_information(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, APILeague.Model.RetrieveRecipeInformation200Response.t} | {:error, Tesla.Env.t}
  def retrieve_recipe_information(connection, id, opts \\ []) do
    optional_params = %{
      :"add-wine-pairing" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/retrieve-recipe")
      |> add_param(:query, :id, id)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.RetrieveRecipeInformation200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Search Recipes
  Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:query` (String.t): The search query.
    - `:cuisines` (String.t): The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR').
    - `:"exclude-cuisines"` (String.t): The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND').
    - `:"meal-type"` (String.t): The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink.
    - `:diet` (String.t): The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian.
    - `:intolerances` (String.t): A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered.
    - `:equipment` (String.t): The equipment required. Multiple values will be interpreted as 'OR'.
    - `:"include-ingredients"` (String.t): A comma-separated list of ingredients that should/must be used in the recipes.
    - `:"exclude-ingredients"` (String.t): A comma-separated list of ingredients or ingredient types that the recipes must not contain.
    - `:"fill-ingredients"` (boolean()): Add information about the ingredients and whether they are used or missing in relation to the query.
    - `:"add-recipe-information"` (boolean()): If set to true, you get more information about the recipes returned.
    - `:"max-time"` (integer()): The maximum time in minutes it should take to prepare and cook the recipe.
    - `:"min-calories"` (float()): The minimum amount of calories the recipe must have per serving.
    - `:"max-calories"` (float()): The maximum amount of calories the recipe can have per serving.
    - `:"min-carbs"` (float()): The minimum amount of carbohydrates in grams the recipe must have per serving.
    - `:"max-carbs"` (float()): The maximum amount of carbohydrates in grams the recipe can have per serving.
    - `:"min-protein"` (float()): The minimum amount of protein in grams the recipe must have per serving.
    - `:"max-protein"` (float()): The maximum amount of protein in grams the recipe can have per serving.
    - `:"min-fat"` (float()): The minimum amount of fat in grams the recipe must have per serving.
    - `:"max-fat"` (float()): The maximum amount of fat in grams the recipe can have per serving.
    - `:"min-sugar"` (float()): The minimum amount of sugar in grams the recipe must have per serving.
    - `:"max-sugar"` (float()): The maximum amount of sugar in grams the recipe can have per serving.
    - `:"min-fiber"` (float()): The minimum amount of fiber in grams the recipe must have per serving.
    - `:"max-fiber"` (float()): The maximum amount of fiber in grams the recipe can have per serving.
    - `:"min-folate"` (float()): The minimum amount of folate in micrograms the recipe must have per serving.
    - `:"max-folate"` (float()): The maximum amount of folate in micrograms the recipe can have per serving.
    - `:"min-folic-acid"` (float()): The minimum amount of folic acid in micrograms the recipe must have per serving.
    - `:"max-folic-acid"` (float()): The maximum amount of folic acid in micrograms the recipe can have per serving.
    - `:"min-iodine"` (float()): The minimum amount of iodine in micrograms the recipe must have per serving.
    - `:"max-iodine"` (float()): The maximum amount of iodine in micrograms the recipe can have per serving.
    - `:"min-iron"` (float()): The minimum amount of iron in milligrams the recipe must have per serving.
    - `:"max-iron"` (float()): The maximum amount of iron in milligrams the recipe can have per serving.
    - `:"min-zinc"` (float()): The minimum amount of zinc in milligrams the recipe must have per serving.
    - `:"max-zinc"` (float()): The maximum amount of zinc in milligrams the recipe can have per serving.
    - `:"min-magnesium"` (float()): The minimum amount of magnesium in milligrams the recipe must have per serving.
    - `:"max-magnesium"` (float()): The maximum amount of magnesium in milligrams the recipe can have per serving.
    - `:"min-manganese"` (float()): The minimum amount of manganese in milligrams the recipe must have per serving.
    - `:"max-manganese"` (float()): The maximum amount of manganese in milligrams the recipe can have per serving.
    - `:"min-phosphorus"` (float()): The minimum amount of phosphorus in milligrams the recipe must have per serving.
    - `:"max-phosphorus"` (float()): The maximum amount of phosphorus in milligrams the recipe can have per serving.
    - `:"min-potassium"` (float()): The minimum amount of potassium in milligrams the recipe must have per serving.
    - `:"max-potassium"` (float()): The maximum amount of potassium in milligrams the recipe can have per serving.
    - `:"min-sodium"` (float()): The minimum amount of sodium in milligrams the recipe must have per serving.
    - `:"max-sodium"` (float()): The maximum amount of sodium in milligrams the recipe can have per serving.
    - `:"min-selenium"` (float()): The minimum amount of selenium in micrograms the recipe must have per serving.
    - `:"max-selenium"` (float()): The maximum amount of selenium in micrograms the recipe can have per serving.
    - `:"min-copper"` (float()): The minimum amount of copper in milligrams the recipe must have per serving.
    - `:"max-copper"` (float()): The maximum amount of copper in milligrams the recipe can have per serving.
    - `:"min-calcium"` (float()): The minimum amount of calcium in milligrams the recipe must have per serving.
    - `:"max-calcium"` (float()): The maximum amount of calcium in milligrams the recipe can have per serving.
    - `:"min-choline"` (float()): The minimum amount of choline in milligrams the recipe must have per serving.
    - `:"max-choline"` (float()): The maximum amount of choline in milligrams the recipe can have per serving.
    - `:"min-cholesterol"` (float()): The minimum amount of cholesterol in milligrams the recipe must have per serving.
    - `:"max-cholesterol"` (float()): The maximum amount of cholesterol in milligrams the recipe can have per serving.
    - `:"min-fluoride"` (float()): The minimum amount of fluoride in milligrams the recipe must have per serving.
    - `:"max-fluoride"` (float()): The maximum amount of fluoride in milligrams the recipe can have per serving.
    - `:"min-alcohol"` (float()): The minimum amount of alcohol in grams the recipe must have per serving.
    - `:"max-alcohol"` (float()): The maximum amount of alcohol in grams the recipe can have per serving.
    - `:"min-caffeine"` (float()): The minimum amount of caffeine in milligrams the recipe must have per serving.
    - `:"max-caffeine"` (float()): The maximum amount of caffeine in milligrams the recipe can have per serving.
    - `:"min-saturated-fat"` (float()): The minimum amount of saturated fat in grams the recipe must have per serving.
    - `:"max-saturated-fat"` (float()): The maximum amount of saturated fat in grams the recipe can have per serving.
    - `:"min-vitamin-a"` (float()): The minimum amount of Vitamin A in IU the recipe must have per serving.
    - `:"max-vitamin-a"` (float()): The maximum amount of Vitamin A in IU the recipe can have per serving.
    - `:"min-vitamin-c"` (float()): The minimum amount of Vitamin C in milligrams the recipe must have per serving.
    - `:"max-vitamin-c"` (float()): The maximum amount of Vitamin C in milligrams the recipe can have per serving.
    - `:"min-vitamin-d"` (float()): The minimum amount of Vitamin D in micrograms the recipe must have per serving.
    - `:"max-vitamin-d"` (float()): The maximum amount of Vitamin D in micrograms the recipe can have per serving.
    - `:"min-vitamin-e"` (float()): The minimum amount of Vitamin E in milligrams the recipe must have per serving.
    - `:"max-vitamin-e"` (float()): The maximum amount of Vitamin E in milligrams the recipe can have per serving.
    - `:"min-vitamin-k"` (float()): The minimum amount of Vitamin K in micrograms the recipe must have per serving.
    - `:"max-vitamin-k"` (float()): The maximum amount of Vitamin K in micrograms the recipe can have per serving.
    - `:"min-vitamin-b1"` (float()): The minimum amount of Vitamin B1 in milligrams the recipe must have per serving.
    - `:"max-vitamin-b1"` (float()): The maximum amount of Vitamin B1 in milligrams the recipe can have per serving.
    - `:"min-vitamin-b2"` (float()): The minimum amount of Vitamin B2 in milligrams the recipe must have per serving.
    - `:"max-vitamin-b2"` (float()): The maximum amount of Vitamin B2 in milligrams the recipe can have per serving.
    - `:"min-vitamin-b3"` (float()): The minimum amount of Vitamin B3 in milligrams the recipe must have per serving.
    - `:"max-vitamin-b3"` (float()): The maximum amount of Vitamin B3 in milligrams the recipe can have per serving.
    - `:"min-vitamin-b5"` (float()): The minimum amount of Vitamin B5 in milligrams the recipe must have per serving.
    - `:"max-vitamin-b5"` (float()): The maximum amount of Vitamin B5 in milligrams the recipe can have per serving.
    - `:"min-vitamin-b6"` (float()): The minimum amount of Vitamin B6 in milligrams the recipe must have per serving.
    - `:"max-vitamin-b6"` (float()): The maximum amount of Vitamin B6 in milligrams the recipe can have per serving.
    - `:"min-vitamin-b12"` (float()): The minimum amount of Vitamin B12 in milligrams the recipe must have per serving.
    - `:"max-vitamin-b12"` (float()): The maximum amount of Vitamin B12 in milligrams the recipe can have per serving.
    - `:sort` (String.t): The strategy to sort recipes by. See a full list of supported sorting options.
    - `:"sort-direction"` (String.t): Whether to sort ascending or descending (ASC or DESC).
    - `:offset` (integer()): The number of recipes to skip, between 0 and 900.
    - `:number` (integer()): The number of recipes, between 1 and 100.

  ### Returns

  - `{:ok, APILeague.Model.SearchRecipes200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec search_recipes(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, APILeague.Model.SearchRecipes200Response.t} | {:error, Tesla.Env.t}
  def search_recipes(connection, opts \\ []) do
    optional_params = %{
      :query => :query,
      :cuisines => :query,
      :"exclude-cuisines" => :query,
      :"meal-type" => :query,
      :diet => :query,
      :intolerances => :query,
      :equipment => :query,
      :"include-ingredients" => :query,
      :"exclude-ingredients" => :query,
      :"fill-ingredients" => :query,
      :"add-recipe-information" => :query,
      :"max-time" => :query,
      :"min-calories" => :query,
      :"max-calories" => :query,
      :"min-carbs" => :query,
      :"max-carbs" => :query,
      :"min-protein" => :query,
      :"max-protein" => :query,
      :"min-fat" => :query,
      :"max-fat" => :query,
      :"min-sugar" => :query,
      :"max-sugar" => :query,
      :"min-fiber" => :query,
      :"max-fiber" => :query,
      :"min-folate" => :query,
      :"max-folate" => :query,
      :"min-folic-acid" => :query,
      :"max-folic-acid" => :query,
      :"min-iodine" => :query,
      :"max-iodine" => :query,
      :"min-iron" => :query,
      :"max-iron" => :query,
      :"min-zinc" => :query,
      :"max-zinc" => :query,
      :"min-magnesium" => :query,
      :"max-magnesium" => :query,
      :"min-manganese" => :query,
      :"max-manganese" => :query,
      :"min-phosphorus" => :query,
      :"max-phosphorus" => :query,
      :"min-potassium" => :query,
      :"max-potassium" => :query,
      :"min-sodium" => :query,
      :"max-sodium" => :query,
      :"min-selenium" => :query,
      :"max-selenium" => :query,
      :"min-copper" => :query,
      :"max-copper" => :query,
      :"min-calcium" => :query,
      :"max-calcium" => :query,
      :"min-choline" => :query,
      :"max-choline" => :query,
      :"min-cholesterol" => :query,
      :"max-cholesterol" => :query,
      :"min-fluoride" => :query,
      :"max-fluoride" => :query,
      :"min-alcohol" => :query,
      :"max-alcohol" => :query,
      :"min-caffeine" => :query,
      :"max-caffeine" => :query,
      :"min-saturated-fat" => :query,
      :"max-saturated-fat" => :query,
      :"min-vitamin-a" => :query,
      :"max-vitamin-a" => :query,
      :"min-vitamin-c" => :query,
      :"max-vitamin-c" => :query,
      :"min-vitamin-d" => :query,
      :"max-vitamin-d" => :query,
      :"min-vitamin-e" => :query,
      :"max-vitamin-e" => :query,
      :"min-vitamin-k" => :query,
      :"max-vitamin-k" => :query,
      :"min-vitamin-b1" => :query,
      :"max-vitamin-b1" => :query,
      :"min-vitamin-b2" => :query,
      :"max-vitamin-b2" => :query,
      :"min-vitamin-b3" => :query,
      :"max-vitamin-b3" => :query,
      :"min-vitamin-b5" => :query,
      :"max-vitamin-b5" => :query,
      :"min-vitamin-b6" => :query,
      :"max-vitamin-b6" => :query,
      :"min-vitamin-b12" => :query,
      :"max-vitamin-b12" => :query,
      :sort => :query,
      :"sort-direction" => :query,
      :offset => :query,
      :number => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/search-recipes")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.SearchRecipes200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Search Restaurants
  Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `lat` (float()): The latitude to search around.
  - `lon` (float()): The longitude to search around.
  - `opts` (keyword): Optional parameters
    - `:query` (String.t): The search query.
    - `:distance` (integer()): The maximum distance of the restaurant in miles around the given location.
    - `:budget` (float()): The budget in USD for the meal.
    - `:"min-rating"` (float()): The minimum rating of the restaurants in range [0,5].
    - `:cuisine` (String.t): The cuisine that the restaurants should support.
    - `:"is-open"` (boolean()): Whether the restaurants have to be open now.
    - `:page` (integer()): The page of the results.
    - `:sort` (String.t): The sort parameter, one of: cheapest, fastest, rating, distance or relevance.

  ### Returns

  - `{:ok, APILeague.Model.SearchRestaurants200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec search_restaurants(Tesla.Env.client, float(), float(), keyword()) :: {:ok, APILeague.Model.SearchRestaurants200Response.t} | {:ok, nil} | {:error, Tesla.Env.t}
  def search_restaurants(connection, lat, lon, opts \\ []) do
    optional_params = %{
      :query => :query,
      :distance => :query,
      :budget => :query,
      :"min-rating" => :query,
      :cuisine => :query,
      :"is-open" => :query,
      :page => :query,
      :sort => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/search-restaurants")
      |> add_param(:query, :lat, lat)
      |> add_param(:query, :lon, lon)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.SearchRestaurants200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end
end
