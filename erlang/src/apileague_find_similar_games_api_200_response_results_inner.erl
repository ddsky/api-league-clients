-module(apileague_find_similar_games_api_200_response_results_inner).

-export([encode/1]).

-export_type([apileague_find_similar_games_api_200_response_results_inner/0]).

-type apileague_find_similar_games_api_200_response_results_inner() ::
    #{ 'image' => binary(),
       'short_description' => binary(),
       'micro_trailer' => binary(),
       'year' => integer(),
       'name' => binary(),
       'genre' => binary(),
       'link' => binary(),
       'rating' => apileague_search_games_api_200_response_results_inner_rating:apileague_search_games_api_200_response_results_inner_rating(),
       'id' => integer(),
       'adult_only' => boolean(),
       'screenshots' => list(),
       'gameplay' => binary()
     }.

encode(#{ 'image' := Image,
          'short_description' := ShortDescription,
          'micro_trailer' := MicroTrailer,
          'year' := Year,
          'name' := Name,
          'genre' := Genre,
          'link' := Link,
          'rating' := Rating,
          'id' := Id,
          'adult_only' := AdultOnly,
          'screenshots' := Screenshots,
          'gameplay' := Gameplay
        }) ->
    #{ 'image' => Image,
       'short_description' => ShortDescription,
       'micro_trailer' => MicroTrailer,
       'year' => Year,
       'name' => Name,
       'genre' => Genre,
       'link' => Link,
       'rating' => Rating,
       'id' => Id,
       'adult_only' => AdultOnly,
       'screenshots' => Screenshots,
       'gameplay' => Gameplay
     }.
