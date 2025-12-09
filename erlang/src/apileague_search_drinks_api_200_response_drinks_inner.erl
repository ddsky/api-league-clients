-module(apileague_search_drinks_api_200_response_drinks_inner).

-export([encode/1]).

-export_type([apileague_search_drinks_api_200_response_drinks_inner/0]).

-type apileague_search_drinks_api_200_response_drinks_inner() ::
    #{ 'id' => integer(),
       'title' => binary(),
       'images' => list(),
       'price_per_serving' => integer(),
       'nutrition' => apileague_search_drinks_api_200_response_drinks_inner_nutrition:apileague_search_drinks_api_200_response_drinks_inner_nutrition(),
       'flavors' => list(),
       'glass_type' => binary(),
       'description' => binary(),
       'cuisines' => list(),
       'ingredients' => list(),
       'instructions' => list(),
       'credits' => apileague_search_drinks_api_200_response_drinks_inner_credits:apileague_search_drinks_api_200_response_drinks_inner_credits()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'images' := Images,
          'price_per_serving' := PricePerServing,
          'nutrition' := Nutrition,
          'flavors' := Flavors,
          'glass_type' := GlassType,
          'description' := Description,
          'cuisines' := Cuisines,
          'ingredients' := Ingredients,
          'instructions' := Instructions,
          'credits' := Credits
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'images' => Images,
       'price_per_serving' => PricePerServing,
       'nutrition' => Nutrition,
       'flavors' => Flavors,
       'glass_type' => GlassType,
       'description' => Description,
       'cuisines' => Cuisines,
       'ingredients' => Ingredients,
       'instructions' => Instructions,
       'credits' => Credits
     }.
