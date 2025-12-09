-module(apileague_retrieve_recipe_information_api_200_response_dietary_properties).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_api_200_response_dietary_properties/0]).

-type apileague_retrieve_recipe_information_api_200_response_dietary_properties() ::
    #{ 'vegetarian' => boolean(),
       'vegan' => boolean(),
       'gluten_free' => boolean(),
       'dairy_free' => boolean(),
       'low_fodmap' => boolean(),
       'gaps' => binary(),
       'diets' => list()
     }.

encode(#{ 'vegetarian' := Vegetarian,
          'vegan' := Vegan,
          'gluten_free' := GlutenFree,
          'dairy_free' := DairyFree,
          'low_fodmap' := LowFodmap,
          'gaps' := Gaps,
          'diets' := Diets
        }) ->
    #{ 'vegetarian' => Vegetarian,
       'vegan' => Vegan,
       'gluten_free' => GlutenFree,
       'dairy_free' => DairyFree,
       'low_fodmap' => LowFodmap,
       'gaps' => Gaps,
       'diets' => Diets
     }.
