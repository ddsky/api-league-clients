-module(apileague_storage_api).

-export([read_key_value_from_store_api/2, read_key_value_from_store_api/3,
         store_key_value_getapi/3, store_key_value_getapi/4]).

-define(BASE_URL, <<"">>).

%% @doc Read Key Value from Store API
%% Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
-spec read_key_value_from_store_api(ctx:ctx(), binary()) -> {ok, apileague_read_key_value_from_store_api_200_response:apileague_read_key_value_from_store_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
read_key_value_from_store_api(Ctx, Key) ->
    read_key_value_from_store_api(Ctx, Key, #{}).

-spec read_key_value_from_store_api(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_read_key_value_from_store_api_200_response:apileague_read_key_value_from_store_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
read_key_value_from_store_api(Ctx, Key, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/read-key-value"],
    QS = lists:flatten([{<<"key">>, Key}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Store Key Value (GET) API
%% Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
-spec store_key_value_getapi(ctx:ctx(), binary(), binary()) -> {ok, apileague_store_key_value_getapi_200_response:apileague_store_key_value_getapi_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
store_key_value_getapi(Ctx, Key, Value) ->
    store_key_value_getapi(Ctx, Key, Value, #{}).

-spec store_key_value_getapi(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, apileague_store_key_value_getapi_200_response:apileague_store_key_value_getapi_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
store_key_value_getapi(Ctx, Key, Value, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/store-key-value"],
    QS = lists:flatten([{<<"key">>, Key}, {<<"value">>, Value}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


