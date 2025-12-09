-module(apileague_knowledge_api).

-export([random_affirmation_api/1, random_affirmation_api/2,
         random_life_hack_api/1, random_life_hack_api/2,
         random_quote_api/1, random_quote_api/2,
         random_riddle_api/1, random_riddle_api/2,
         random_trivia_api/1, random_trivia_api/2]).

-define(BASE_URL, <<"">>).

%% @doc Random Affirmation API
%% This endpoint returns a random affirmation to boost your confidence and motivation. Affirmations are positive statements that can help you overcome negative thoughts and improve your mindset and well-being.
-spec random_affirmation_api(ctx:ctx()) -> {ok, apileague_random_affirmation_api_200_response:apileague_random_affirmation_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_affirmation_api(Ctx) ->
    random_affirmation_api(Ctx, #{}).

-spec random_affirmation_api(ctx:ctx(), maps:map()) -> {ok, apileague_random_affirmation_api_200_response:apileague_random_affirmation_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_affirmation_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/retrieve-random-affirmation"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Random Life Hack API
%% This endpoint returns a random life hack to make your life easier. Life hacks are simple and clever tips or tricks that can help you save time, money, or effort in your daily life.
-spec random_life_hack_api(ctx:ctx()) -> {ok, apileague_random_life_hack_api_200_response:apileague_random_life_hack_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_life_hack_api(Ctx) ->
    random_life_hack_api(Ctx, #{}).

-spec random_life_hack_api(ctx:ctx(), maps:map()) -> {ok, apileague_random_life_hack_api_200_response:apileague_random_life_hack_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_life_hack_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/retrieve-random-life-hack"],
    QS = lists:flatten([])++apileague_utils:optional_params(['max-length'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Random Quote API
%% This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
-spec random_quote_api(ctx:ctx()) -> {ok, apileague_random_quote_api_200_response:apileague_random_quote_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_quote_api(Ctx) ->
    random_quote_api(Ctx, #{}).

-spec random_quote_api(ctx:ctx(), maps:map()) -> {ok, apileague_random_quote_api_200_response:apileague_random_quote_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_quote_api(Ctx, Optional) ->
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

%% @doc Random Riddle API
%% The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.
-spec random_riddle_api(ctx:ctx()) -> {ok, apileague_random_riddle_api_200_response:apileague_random_riddle_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_riddle_api(Ctx) ->
    random_riddle_api(Ctx, #{}).

-spec random_riddle_api(ctx:ctx(), maps:map()) -> {ok, apileague_random_riddle_api_200_response:apileague_random_riddle_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_riddle_api(Ctx, Optional) ->
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

%% @doc Random Trivia API
%% This endpoint returns a random piece of trivia like \"Rio de Janeiro was once the capital of Portugal, making it the only European capital outside of Europe.\".
-spec random_trivia_api(ctx:ctx()) -> {ok, apileague_random_trivia_api_200_response:apileague_random_trivia_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_trivia_api(Ctx) ->
    random_trivia_api(Ctx, #{}).

-spec random_trivia_api(ctx:ctx(), maps:map()) -> {ok, apileague_random_trivia_api_200_response:apileague_random_trivia_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_trivia_api(Ctx, Optional) ->
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


