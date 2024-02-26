-module(openapi_storage_api).

-export([read_key_value_from_store/2, read_key_value_from_store/3,
         store_key_value_get/3, store_key_value_get/4]).

-define(BASE_URL, <<"">>).

%% @doc Read Key Value from Store
%% Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
-spec read_key_value_from_store(ctx:ctx(), binary()) -> {ok, openapi_inline_response_200_31:openapi_inline_response_200_31(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
read_key_value_from_store(Ctx, Key) ->
    read_key_value_from_store(Ctx, Key, #{}).

-spec read_key_value_from_store(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_inline_response_200_31:openapi_inline_response_200_31(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
read_key_value_from_store(Ctx, Key, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/read-key-value">>],
    QS = lists:flatten([{<<"key">>, Key}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Store Key Value (GET)
%% Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
-spec store_key_value_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_inline_response_200_32:openapi_inline_response_200_32(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
store_key_value_get(Ctx, Key, Value) ->
    store_key_value_get(Ctx, Key, Value, #{}).

-spec store_key_value_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_inline_response_200_32:openapi_inline_response_200_32(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
store_key_value_get(Ctx, Key, Value, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/store-key-value">>],
    QS = lists:flatten([{<<"key">>, Key}, {<<"value">>, Value}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


