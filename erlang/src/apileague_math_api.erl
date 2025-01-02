-module(apileague_math_api).

-export([convert_units_api/4, convert_units_api/5]).

-define(BASE_URL, <<"">>).

%% @doc Convert Units API
%% Convert units from one to another. The API returns the amount and the unit of the target unit.
-spec convert_units_api(ctx:ctx(), float(), binary(), binary()) -> {ok, apileague_convert_units_api_200_response:apileague_convert_units_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
convert_units_api(Ctx, SourceAmount, SourceUnit, TargetUnit) ->
    convert_units_api(Ctx, SourceAmount, SourceUnit, TargetUnit, #{}).

-spec convert_units_api(ctx:ctx(), float(), binary(), binary(), maps:map()) -> {ok, apileague_convert_units_api_200_response:apileague_convert_units_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
convert_units_api(Ctx, SourceAmount, SourceUnit, TargetUnit, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/convert-units"],
    QS = lists:flatten([{<<"source-amount">>, SourceAmount}, {<<"source-unit">>, SourceUnit}, {<<"target-unit">>, TargetUnit}])++apileague_utils:optional_params(['food-name'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


