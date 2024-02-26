-module(openapi_knowledge_api).

-export([random_quote/1, random_quote/2,
         random_trivia/1, random_trivia/2]).

-define(BASE_URL, <<"">>).

%% @doc Random Quote
%% This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
-spec random_quote(ctx:ctx()) -> {ok, openapi_inline_response_200_10:openapi_inline_response_200_10(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
random_quote(Ctx) ->
    random_quote(Ctx, #{}).

-spec random_quote(ctx:ctx(), maps:map()) -> {ok, openapi_inline_response_200_10:openapi_inline_response_200_10(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
random_quote(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/retrieve-random-quote">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['min-length', 'max-length'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Random Trivia
%% This endpoint returns a random piece of trivia.
-spec random_trivia(ctx:ctx()) -> {ok, openapi_inline_response_200_9:openapi_inline_response_200_9(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
random_trivia(Ctx) ->
    random_trivia(Ctx, #{}).

-spec random_trivia(ctx:ctx(), maps:map()) -> {ok, openapi_inline_response_200_9:openapi_inline_response_200_9(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
random_trivia(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/retrieve-random-trivia">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['max-length'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


