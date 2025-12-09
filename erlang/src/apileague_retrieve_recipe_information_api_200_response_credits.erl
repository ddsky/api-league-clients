-module(apileague_retrieve_recipe_information_api_200_response_credits).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_api_200_response_credits/0]).

-type apileague_retrieve_recipe_information_api_200_response_credits() ::
    #{ 'source_name' => binary(),
       'source_url' => binary(),
       'text' => binary(),
       'license' => binary()
     }.

encode(#{ 'source_name' := SourceName,
          'source_url' := SourceUrl,
          'text' := Text,
          'license' := License
        }) ->
    #{ 'source_name' => SourceName,
       'source_url' => SourceUrl,
       'text' => Text,
       'license' => License
     }.
