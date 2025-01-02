-module(apileague_search_drinks_api_200_response_drinks_inner_ingredients_inner_measures).

-export([encode/1]).

-export_type([apileague_search_drinks_api_200_response_drinks_inner_ingredients_inner_measures/0]).

-type apileague_search_drinks_api_200_response_drinks_inner_ingredients_inner_measures() ::
    #{ 'metric' => apileague_search_drinks_api_200_response_drinks_inner_ingredients_inner_measures_metric:apileague_search_drinks_api_200_response_drinks_inner_ingredients_inner_measures_metric(),
       'us' => apileague_search_drinks_api_200_response_drinks_inner_ingredients_inner_measures_us:apileague_search_drinks_api_200_response_drinks_inner_ingredients_inner_measures_us()
     }.

encode(#{ 'metric' := Metric,
          'us' := Us
        }) ->
    #{ 'metric' => Metric,
       'us' => Us
     }.
