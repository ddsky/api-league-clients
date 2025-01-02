-module(apileague_news_api).

-export([extract_news_api/3, extract_news_api/4,
         search_news_api/1, search_news_api/2,
         top_news_api/3, top_news_api/4]).

-define(BASE_URL, <<"">>).

%% @doc Extract News API
%% Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
-spec extract_news_api(ctx:ctx(), binary(), boolean()) -> {ok, apileague_extract_news_api_200_response:apileague_extract_news_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_news_api(Ctx, Url, Analyze) ->
    extract_news_api(Ctx, Url, Analyze, #{}).

-spec extract_news_api(ctx:ctx(), binary(), boolean(), maps:map()) -> {ok, apileague_extract_news_api_200_response:apileague_extract_news_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_news_api(Ctx, Url, Analyze, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/extract-news"],
    QS = lists:flatten([{<<"url">>, Url}, {<<"analyze">>, Analyze}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search News API
%% Search and filter millions of news from over 200 countries in 90 languages by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
-spec search_news_api(ctx:ctx()) -> {ok, apileague_search_news_api_200_response:apileague_search_news_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_news_api(Ctx) ->
    search_news_api(Ctx, #{}).

-spec search_news_api(ctx:ctx(), maps:map()) -> {ok, apileague_search_news_api_200_response:apileague_search_news_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_news_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/search-news"],
    QS = lists:flatten([])++apileague_utils:optional_params(['text', 'source-countries', 'language', 'min-sentiment', 'max-sentiment', 'earliest-publish-date', 'latest-publish-date', 'news-sources', 'authors', 'categories', 'entities', 'location-filter', 'sort', 'sort-direction', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Top News API
%% Get the top news from a country (over 220 are supported) in a language (over 90 are supported) for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
-spec top_news_api(ctx:ctx(), binary(), binary()) -> {ok, apileague_top_news_api_200_response:apileague_top_news_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
top_news_api(Ctx, SourceCountry, Language) ->
    top_news_api(Ctx, SourceCountry, Language, #{}).

-spec top_news_api(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, apileague_top_news_api_200_response:apileague_top_news_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
top_news_api(Ctx, SourceCountry, Language, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/retrieve-top-news"],
    QS = lists:flatten([{<<"source-country">>, SourceCountry}, {<<"language">>, Language}])++apileague_utils:optional_params(['date', 'headlines-only'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


