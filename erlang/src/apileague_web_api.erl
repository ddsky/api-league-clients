-module(apileague_web_api).

-export([extract_authors/2, extract_authors/3,
         extract_content_from_a_web_page/2, extract_content_from_a_web_page/3,
         extract_publish_date/2, extract_publish_date/3,
         retrieve_page_rank/2, retrieve_page_rank/3,
         search_web/2, search_web/3,
         verify_email_address/2, verify_email_address/3]).

-define(BASE_URL, <<"">>).

%% @doc Extract Authors
%% Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
-spec extract_authors(ctx:ctx(), binary()) -> {ok, apileague_extract_authors_200_response:apileague_extract_authors_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_authors(Ctx, Url) ->
    extract_authors(Ctx, Url, #{}).

-spec extract_authors(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_extract_authors_200_response:apileague_extract_authors_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_authors(Ctx, Url, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/extract-authors"],
    QS = lists:flatten([{<<"url">>, Url}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Extract Content from a Web Page
%% Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
-spec extract_content_from_a_web_page(ctx:ctx(), binary()) -> {ok, apileague_extract_content_from_a_web_page_200_response:apileague_extract_content_from_a_web_page_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_content_from_a_web_page(Ctx, Url) ->
    extract_content_from_a_web_page(Ctx, Url, #{}).

-spec extract_content_from_a_web_page(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_extract_content_from_a_web_page_200_response:apileague_extract_content_from_a_web_page_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_content_from_a_web_page(Ctx, Url, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/extract-content"],
    QS = lists:flatten([{<<"url">>, Url}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Extract Publish Date
%% Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
-spec extract_publish_date(ctx:ctx(), binary()) -> {ok, apileague_extract_publish_date_200_response:apileague_extract_publish_date_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_publish_date(Ctx, Url) ->
    extract_publish_date(Ctx, Url, #{}).

-spec extract_publish_date(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_extract_publish_date_200_response:apileague_extract_publish_date_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_publish_date(Ctx, Url, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/extract-publish-date"],
    QS = lists:flatten([{<<"url">>, Url}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retrieve Page Rank
%% This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
-spec retrieve_page_rank(ctx:ctx(), binary()) -> {ok, apileague_retrieve_page_rank_200_response:apileague_retrieve_page_rank_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
retrieve_page_rank(Ctx, Domain) ->
    retrieve_page_rank(Ctx, Domain, #{}).

-spec retrieve_page_rank(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_retrieve_page_rank_200_response:apileague_retrieve_page_rank_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
retrieve_page_rank(Ctx, Domain, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/retrieve-page-rank"],
    QS = lists:flatten([{<<"domain">>, Domain}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Web
%% Search the web for a given query. The API returns a list of results with the title, summary, and URL.
-spec search_web(ctx:ctx(), binary()) -> {ok, apileague_search_web_200_response:apileague_search_web_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_web(Ctx, Query) ->
    search_web(Ctx, Query, #{}).

-spec search_web(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_search_web_200_response:apileague_search_web_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_web(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/search-web"],
    QS = lists:flatten([{<<"query">>, Query}])++apileague_utils:optional_params(['number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Verify Email Address
%% This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
-spec verify_email_address(ctx:ctx(), binary()) -> {ok, apileague_verify_email_address_200_response:apileague_verify_email_address_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
verify_email_address(Ctx, Email) ->
    verify_email_address(Ctx, Email, #{}).

-spec verify_email_address(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_verify_email_address_200_response:apileague_verify_email_address_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
verify_email_address(Ctx, Email, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/verify-email"],
    QS = lists:flatten([{<<"email">>, Email}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


