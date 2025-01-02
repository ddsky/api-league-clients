-module(apileague_search_drinks_api_200_response_drinks_inner).

-export([encode/1]).

-export_type([apileague_search_drinks_api_200_response_drinks_inner/0]).

-type apileague_search_drinks_api_200_response_drinks_inner() ::
    #{ 'flavors' => list(),
       'instructions' => list(),
       'images' => list(),
       'nutrition' => apileague_search_drinks_api_200_response_drinks_inner_nutrition:apileague_search_drinks_api_200_response_drinks_inner_nutrition(),
       'glass_type' => binary(),
       'credits' => apileague_search_drinks_api_200_response_drinks_inner_credits:apileague_search_drinks_api_200_response_drinks_inner_credits(),
       'price_per_serving' => integer(),
       'description' => binary(),
       'ingredients' => list(),
       'id' => integer(),
       'title' => binary(),
       'cuisines' => list()
     }.

encode(#{ 'flavors' := Flavors,
          'instructions' := Instructions,
          'images' := Images,
          'nutrition' := Nutrition,
          'glass_type' := GlassType,
          'credits' := Credits,
          'price_per_serving' := PricePerServing,
          'description' := Description,
          'ingredients' := Ingredients,
          'id' := Id,
          'title' := Title,
          'cuisines' := Cuisines
        }) ->
    #{ 'flavors' => Flavors,
       'instructions' => Instructions,
       'images' => Images,
       'nutrition' => Nutrition,
       'glass_type' => GlassType,
       'credits' => Credits,
       'price_per_serving' => PricePerServing,
       'description' => Description,
       'ingredients' => Ingredients,
       'id' => Id,
       'title' => Title,
       'cuisines' => Cuisines
     }.
