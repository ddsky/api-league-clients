-module(openapi_art_api).

-export([image_to_ascii_art_by_url/2, image_to_ascii_art_by_url/3,
         random_poem/1, random_poem/2]).

-define(BASE_URL, <<"">>).

%% @doc Image to Ascii Art by URL
%% Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
-spec image_to_ascii_art_by_url(ctx:ctx(), binary()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
image_to_ascii_art_by_url(Ctx, Url) ->
    image_to_ascii_art_by_url(Ctx, Url, #{}).

-spec image_to_ascii_art_by_url(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
image_to_ascii_art_by_url(Ctx, Url, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/convert-image-to-ascii-txt">>],
    QS = lists:flatten([{<<"url">>, Url}])++openapi_utils:optional_params(['width', 'height'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Random Poem
%% Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).
-spec random_poem(ctx:ctx()) -> {ok, openapi_inline_response_200_11:openapi_inline_response_200_11(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
random_poem(Ctx) ->
    random_poem(Ctx, #{}).

-spec random_poem(ctx:ctx(), maps:map()) -> {ok, openapi_inline_response_200_11:openapi_inline_response_200_11(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
random_poem(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/retrieve-random-poem">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['min-lines', 'max-lines'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


