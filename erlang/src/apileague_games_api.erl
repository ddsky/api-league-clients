-module(apileague_games_api).

-export([find_similar_games_api/2, find_similar_games_api/3,
         retrieve_game_by_id/2, retrieve_game_by_id/3,
         search_games_api/1, search_games_api/2]).

-define(BASE_URL, <<"">>).

%% @doc Find Similar Games API
%% Find similar games based on a given game using AI. This API allows you to retrieve a list of games that are similar to a specified game, providing recommendations based on various factors such as genre, gameplay mechanics, and user preferences.
-spec find_similar_games_api(ctx:ctx(), integer()) -> {ok, apileague_find_similar_games_api_200_response:apileague_find_similar_games_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
find_similar_games_api(Ctx, Id) ->
    find_similar_games_api(Ctx, Id, #{}).

-spec find_similar_games_api(ctx:ctx(), integer(), maps:map()) -> {ok, apileague_find_similar_games_api_200_response:apileague_find_similar_games_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
find_similar_games_api(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/list-similar-games"],
    QS = lists:flatten([{<<"id">>, Id}])++apileague_utils:optional_params(['limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retrieve Game by Id
%% This API allows you to retrieve detailed information about a specific game by its unique identifier. Game details include the game's name, description, release date, developer, platforms, genres, tags, ratings, screenshots, videos, and more.
-spec retrieve_game_by_id(ctx:ctx(), integer()) -> {ok, apileague_retrieve_game_by_id_200_response:apileague_retrieve_game_by_id_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
retrieve_game_by_id(Ctx, Id) ->
    retrieve_game_by_id(Ctx, Id, #{}).

-spec retrieve_game_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, apileague_retrieve_game_by_id_200_response:apileague_retrieve_game_by_id_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
retrieve_game_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/retrieve-game"],
    QS = lists:flatten([{<<"id">>, Id}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Games API
%% Search through a vast database of over half a million video games from more than 50 platforms. This API allows you to find games based on various criteria such as genre, platform, release date, and more. The results include detailed information about each game, including ratings, descriptions, and images.
-spec search_games_api(ctx:ctx()) -> {ok, apileague_search_games_api_200_response:apileague_search_games_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_games_api(Ctx) ->
    search_games_api(Ctx, #{}).

-spec search_games_api(ctx:ctx(), maps:map()) -> {ok, apileague_search_games_api_200_response:apileague_search_games_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_games_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/search-games"],
    QS = lists:flatten([])++apileague_utils:optional_params(['query', 'offset', 'limit', 'filters', 'sort', 'sort-order', 'generate-filter-options'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


