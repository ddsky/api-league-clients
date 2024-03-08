-module(apileague_news_api).

-export([extract_news/3, extract_news/4,
         search_news/1, search_news/2]).

-define(BASE_URL, <<"">>).

%% @doc Extract News
%% Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
-spec extract_news(ctx:ctx(), binary(), boolean()) -> {ok, apileague_extract_news_200_response:apileague_extract_news_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_news(Ctx, Url, Analyze) ->
    extract_news(Ctx, Url, Analyze, #{}).

-spec extract_news(ctx:ctx(), binary(), boolean(), maps:map()) -> {ok, apileague_extract_news_200_response:apileague_extract_news_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_news(Ctx, Url, Analyze, Optional) ->
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

%% @doc Search News
%% Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
-spec search_news(ctx:ctx()) -> {ok, apileague_search_news_200_response:apileague_search_news_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_news(Ctx) ->
    search_news(Ctx, #{}).

-spec search_news(ctx:ctx(), maps:map()) -> {ok, apileague_search_news_200_response:apileague_search_news_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_news(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/search-news"],
    QS = lists:flatten([])++apileague_utils:optional_params(['text', 'source-countries', 'language', 'min-sentiment', 'max-sentiment', 'earliest-publish-date', 'latest-publish-date', 'news-sources', 'authors', 'entities', 'location-filter', 'sort', 'sort-direction', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


