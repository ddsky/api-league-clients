-module(apileague_art_api).

-export([image_to_ascii_art_by_url/2, image_to_ascii_art_by_url/3,
         random_poem/1, random_poem/2]).

-define(BASE_URL, <<"">>).

%% @doc Image to Ascii Art by URL
%% Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
-spec image_to_ascii_art_by_url(ctx:ctx(), binary()) -> {ok, binary(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
image_to_ascii_art_by_url(Ctx, Url) ->
    image_to_ascii_art_by_url(Ctx, Url, #{}).

-spec image_to_ascii_art_by_url(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
image_to_ascii_art_by_url(Ctx, Url, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/convert-image-to-ascii-txt"],
    QS = lists:flatten([{<<"url">>, Url}])++apileague_utils:optional_params(['width', 'height'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Random Poem
%% Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).
-spec random_poem(ctx:ctx()) -> {ok, apileague_random_poem_200_response:apileague_random_poem_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_poem(Ctx) ->
    random_poem(Ctx, #{}).

-spec random_poem(ctx:ctx(), maps:map()) -> {ok, apileague_random_poem_200_response:apileague_random_poem_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_poem(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/retrieve-random-poem"],
    QS = lists:flatten([])++apileague_utils:optional_params(['min-lines', 'max-lines'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


