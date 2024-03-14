-module(apileague_retrieve_recipe_information_200_response_credits).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_200_response_credits/0]).

-type apileague_retrieve_recipe_information_200_response_credits() ::
    #{ 'license' => binary(),
       'text' => binary(),
       'source_name' => binary(),
       'source_url' => binary()
     }.

encode(#{ 'license' := License,
          'text' := Text,
          'source_name' := SourceName,
          'source_url' := SourceUrl
        }) ->
    #{ 'license' => License,
       'text' => Text,
       'source_name' => SourceName,
       'source_url' => SourceUrl
     }.
