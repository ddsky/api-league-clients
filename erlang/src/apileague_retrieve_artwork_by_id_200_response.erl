-module(apileague_retrieve_artwork_by_id_200_response).

-export([encode/1]).

-export_type([apileague_retrieve_artwork_by_id_200_response/0]).

-type apileague_retrieve_artwork_by_id_200_response() ::
    #{ 'id' => integer(),
       'title' => binary(),
       'image' => binary(),
       'start_date' => integer(),
       'end_date' => integer(),
       'description' => binary()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'image' := Image,
          'start_date' := StartDate,
          'end_date' := EndDate,
          'description' := Description
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'image' => Image,
       'start_date' => StartDate,
       'end_date' => EndDate,
       'description' => Description
     }.
