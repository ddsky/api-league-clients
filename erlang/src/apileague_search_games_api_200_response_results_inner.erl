-module(apileague_search_games_api_200_response_results_inner).

-export([encode/1]).

-export_type([apileague_search_games_api_200_response_results_inner/0]).

-type apileague_search_games_api_200_response_results_inner() ::
    #{ 'image' => binary(),
       'short_description' => binary(),
       'year' => integer(),
       'link' => binary(),
       'rating' => apileague_search_games_api_200_response_results_inner_rating:apileague_search_games_api_200_response_results_inner_rating(),
       'adult_only' => boolean(),
       'screenshots' => list(),
       'platforms' => list(),
       'micro_trailer' => binary(),
       'name' => binary(),
       'genre' => binary(),
       'id' => integer(),
       'gameplay' => binary()
     }.

encode(#{ 'image' := Image,
          'short_description' := ShortDescription,
          'year' := Year,
          'link' := Link,
          'rating' := Rating,
          'adult_only' := AdultOnly,
          'screenshots' := Screenshots,
          'platforms' := Platforms,
          'micro_trailer' := MicroTrailer,
          'name' := Name,
          'genre' := Genre,
          'id' := Id,
          'gameplay' := Gameplay
        }) ->
    #{ 'image' => Image,
       'short_description' => ShortDescription,
       'year' => Year,
       'link' => Link,
       'rating' => Rating,
       'adult_only' => AdultOnly,
       'screenshots' => Screenshots,
       'platforms' => Platforms,
       'micro_trailer' => MicroTrailer,
       'name' => Name,
       'genre' => Genre,
       'id' => Id,
       'gameplay' => Gameplay
     }.
