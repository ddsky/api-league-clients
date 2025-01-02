-module(apileague_extract_publish_date_api_200_response).

-export([encode/1]).

-export_type([apileague_extract_publish_date_api_200_response/0]).

-type apileague_extract_publish_date_api_200_response() ::
    #{ 'publish_date' => binary()
     }.

encode(#{ 'publish_date' := PublishDate
        }) ->
    #{ 'publish_date' => PublishDate
     }.
