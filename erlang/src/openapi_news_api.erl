-module(openapi_news_api).

-export([extract_news/3, extract_news/4,
         search_news/1, search_news/2]).

-define(BASE_URL, <<"">>).

%% @doc Extract News
%% Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
-spec extract_news(ctx:ctx(), binary(), boolean()) -> {ok, openapi_inline_response_200_3:openapi_inline_response_200_3(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
extract_news(Ctx, Url, Analyze) ->
    extract_news(Ctx, Url, Analyze, #{}).

-spec extract_news(ctx:ctx(), binary(), boolean(), maps:map()) -> {ok, openapi_inline_response_200_3:openapi_inline_response_200_3(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
extract_news(Ctx, Url, Analyze, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/extract-news">>],
    QS = lists:flatten([{<<"url">>, Url}, {<<"analyze">>, Analyze}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search News
%% Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
-spec search_news(ctx:ctx()) -> {ok, openapi_inline_response_200_2:openapi_inline_response_200_2(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
search_news(Ctx) ->
    search_news(Ctx, #{}).

-spec search_news(ctx:ctx(), maps:map()) -> {ok, openapi_inline_response_200_2:openapi_inline_response_200_2(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
search_news(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/search-news">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['text', 'source-countries', 'language', 'min-sentiment', 'max-sentiment', 'earliest-publish-date', 'latest-publish-date', 'news-sources', 'authors', 'entities', 'location-filter', 'sort', 'sort-direction', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


