-module(apileague_knowledge_api).

-export([random_quote/1, random_quote/2,
         random_riddle/1, random_riddle/2,
         random_trivia/1, random_trivia/2]).

-define(BASE_URL, <<"">>).

%% @doc Random Quote
%% This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
-spec random_quote(ctx:ctx()) -> {ok, apileague_random_quote_200_response:apileague_random_quote_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_quote(Ctx) ->
    random_quote(Ctx, #{}).

-spec random_quote(ctx:ctx(), maps:map()) -> {ok, apileague_random_quote_200_response:apileague_random_quote_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_quote(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/retrieve-random-quote"],
    QS = lists:flatten([])++apileague_utils:optional_params(['min-length', 'max-length'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Random Riddle
%% The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.
-spec random_riddle(ctx:ctx()) -> {ok, apileague_random_riddle_200_response:apileague_random_riddle_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_riddle(Ctx) ->
    random_riddle(Ctx, #{}).

-spec random_riddle(ctx:ctx(), maps:map()) -> {ok, apileague_random_riddle_200_response:apileague_random_riddle_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_riddle(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/retrieve-random-riddle"],
    QS = lists:flatten([])++apileague_utils:optional_params(['difficulty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Random Trivia
%% This endpoint returns a random piece of trivia.
-spec random_trivia(ctx:ctx()) -> {ok, apileague_random_trivia_200_response:apileague_random_trivia_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_trivia(Ctx) ->
    random_trivia(Ctx, #{}).

-spec random_trivia(ctx:ctx(), maps:map()) -> {ok, apileague_random_trivia_200_response:apileague_random_trivia_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_trivia(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/retrieve-random-trivia"],
    QS = lists:flatten([])++apileague_utils:optional_params(['max-length'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


