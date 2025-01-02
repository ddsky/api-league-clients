-module(apileague_art_api).

-export([image_to_ascii_art_by_urlapi/2, image_to_ascii_art_by_urlapi/3,
         random_poem_api/1, random_poem_api/2]).

-define(BASE_URL, <<"">>).

%% @doc Image to Ascii Art by URL API
%% Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
-spec image_to_ascii_art_by_urlapi(ctx:ctx(), binary()) -> {ok, binary(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
image_to_ascii_art_by_urlapi(Ctx, Url) ->
    image_to_ascii_art_by_urlapi(Ctx, Url, #{}).

-spec image_to_ascii_art_by_urlapi(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
image_to_ascii_art_by_urlapi(Ctx, Url, Optional) ->
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

%% @doc Random Poem API
%% Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).
-spec random_poem_api(ctx:ctx()) -> {ok, apileague_random_poem_api_200_response:apileague_random_poem_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_poem_api(Ctx) ->
    random_poem_api(Ctx, #{}).

-spec random_poem_api(ctx:ctx(), maps:map()) -> {ok, apileague_random_poem_api_200_response:apileague_random_poem_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_poem_api(Ctx, Optional) ->
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


