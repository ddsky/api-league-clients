-module(openapi_web_api).

-export([extract_authors/2, extract_authors/3,
         extract_content_from_a_web_page/2, extract_content_from_a_web_page/3,
         extract_publish_date/2, extract_publish_date/3,
         search_web/2, search_web/3]).

-define(BASE_URL, <<"">>).

%% @doc Extract Authors
%% Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
-spec extract_authors(ctx:ctx(), binary()) -> {ok, openapi_inline_response_200_14:openapi_inline_response_200_14(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
extract_authors(Ctx, Url) ->
    extract_authors(Ctx, Url, #{}).

-spec extract_authors(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_inline_response_200_14:openapi_inline_response_200_14(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
extract_authors(Ctx, Url, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/extract-authors">>],
    QS = lists:flatten([{<<"url">>, Url}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Extract Content from a Web Page
%% Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
-spec extract_content_from_a_web_page(ctx:ctx(), binary()) -> {ok, openapi_inline_response_200_12:openapi_inline_response_200_12(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
extract_content_from_a_web_page(Ctx, Url) ->
    extract_content_from_a_web_page(Ctx, Url, #{}).

-spec extract_content_from_a_web_page(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_inline_response_200_12:openapi_inline_response_200_12(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
extract_content_from_a_web_page(Ctx, Url, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/extract-content">>],
    QS = lists:flatten([{<<"url">>, Url}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Extract Publish Date
%% Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
-spec extract_publish_date(ctx:ctx(), binary()) -> {ok, openapi_inline_response_200_13:openapi_inline_response_200_13(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
extract_publish_date(Ctx, Url) ->
    extract_publish_date(Ctx, Url, #{}).

-spec extract_publish_date(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_inline_response_200_13:openapi_inline_response_200_13(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
extract_publish_date(Ctx, Url, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/extract-publish-date">>],
    QS = lists:flatten([{<<"url">>, Url}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Web
%% Search the web for a given query. The API returns a list of results with the title, summary, and URL.
-spec search_web(ctx:ctx(), binary()) -> {ok, openapi_inline_response_200_15:openapi_inline_response_200_15(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
search_web(Ctx, Query) ->
    search_web(Ctx, Query, #{}).

-spec search_web(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_inline_response_200_15:openapi_inline_response_200_15(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
search_web(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/search-web">>],
    QS = lists:flatten([{<<"query">>, Query}])++openapi_utils:optional_params(['number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


