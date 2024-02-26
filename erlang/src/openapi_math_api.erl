-module(openapi_math_api).

-export([convert_units/4, convert_units/5]).

-define(BASE_URL, <<"">>).

%% @doc Convert Units
%% Convert units from one to another. The API returns the amount and the unit of the target unit.
-spec convert_units(ctx:ctx(), float(), binary(), binary()) -> {ok, openapi_inline_response_200_30:openapi_inline_response_200_30(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
convert_units(Ctx, SourceAmount, SourceUnit, TargetUnit) ->
    convert_units(Ctx, SourceAmount, SourceUnit, TargetUnit, #{}).

-spec convert_units(ctx:ctx(), float(), binary(), binary(), maps:map()) -> {ok, openapi_inline_response_200_30:openapi_inline_response_200_30(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
convert_units(Ctx, SourceAmount, SourceUnit, TargetUnit, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/convert-units">>],
    QS = lists:flatten([{<<"source-amount">>, SourceAmount}, {<<"source-unit">>, SourceUnit}, {<<"target-unit">>, TargetUnit}])++openapi_utils:optional_params(['food-name'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


