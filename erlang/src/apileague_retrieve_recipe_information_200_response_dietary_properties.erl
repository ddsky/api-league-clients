-module(apileague_retrieve_recipe_information_200_response_dietary_properties).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_200_response_dietary_properties/0]).

-type apileague_retrieve_recipe_information_200_response_dietary_properties() ::
    #{ 'low_fodmap' => boolean(),
       'vegetarian' => boolean(),
       'vegan' => boolean(),
       'gluten_free' => boolean(),
       'dairy_free' => boolean(),
       'gaps' => binary(),
       'diets' => list()
     }.

encode(#{ 'low_fodmap' := LowFodmap,
          'vegetarian' := Vegetarian,
          'vegan' := Vegan,
          'gluten_free' := GlutenFree,
          'dairy_free' := DairyFree,
          'gaps' := Gaps,
          'diets' := Diets
        }) ->
    #{ 'low_fodmap' => LowFodmap,
       'vegetarian' => Vegetarian,
       'vegan' => Vegan,
       'gluten_free' => GlutenFree,
       'dairy_free' => DairyFree,
       'gaps' => Gaps,
       'diets' => Diets
     }.
