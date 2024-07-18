-module(apileague_retrieve_recipe_information_200_response_ingredients_inner_measures).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_200_response_ingredients_inner_measures/0]).

-type apileague_retrieve_recipe_information_200_response_ingredients_inner_measures() ::
    #{ 'metric' => apileague_search_drinks_200_response_drinks_inner_ingredients_inner_measures_metric:apileague_search_drinks_200_response_drinks_inner_ingredients_inner_measures_metric(),
       'us' => apileague_search_drinks_200_response_drinks_inner_ingredients_inner_measures_metric:apileague_search_drinks_200_response_drinks_inner_ingredients_inner_measures_metric()
     }.

encode(#{ 'metric' := Metric,
          'us' := Us
        }) ->
    #{ 'metric' => Metric,
       'us' => Us
     }.
