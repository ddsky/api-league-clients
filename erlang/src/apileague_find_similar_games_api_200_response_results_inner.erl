-module(apileague_find_similar_games_api_200_response_results_inner).

-export([encode/1]).

-export_type([apileague_find_similar_games_api_200_response_results_inner/0]).

-type apileague_find_similar_games_api_200_response_results_inner() ::
    #{ 'id' => integer(),
       'year' => integer(),
       'name' => binary(),
       'genre' => binary(),
       'image' => binary(),
       'link' => binary(),
       'rating' => apileague_search_games_api_200_response_results_inner_rating:apileague_search_games_api_200_response_results_inner_rating(),
       'adult_only' => boolean(),
       'screenshots' => list(),
       'micro_trailer' => binary(),
       'gameplay' => binary(),
       'short_description' => binary()
     }.

encode(#{ 'id' := Id,
          'year' := Year,
          'name' := Name,
          'genre' := Genre,
          'image' := Image,
          'link' := Link,
          'rating' := Rating,
          'adult_only' := AdultOnly,
          'screenshots' := Screenshots,
          'micro_trailer' := MicroTrailer,
          'gameplay' := Gameplay,
          'short_description' := ShortDescription
        }) ->
    #{ 'id' => Id,
       'year' => Year,
       'name' => Name,
       'genre' => Genre,
       'image' => Image,
       'link' => Link,
       'rating' => Rating,
       'adult_only' => AdultOnly,
       'screenshots' => Screenshots,
       'micro_trailer' => MicroTrailer,
       'gameplay' => Gameplay,
       'short_description' => ShortDescription
     }.
