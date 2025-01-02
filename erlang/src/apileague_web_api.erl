-module(apileague_web_api).

-export([extract_authors_api/2, extract_authors_api/3,
         extract_content_from_a_web_page_api/2, extract_content_from_a_web_page_api/3,
         extract_publish_date_api/2, extract_publish_date_api/3,
         retrieve_page_rank_api/2, retrieve_page_rank_api/3,
         search_web_api/2, search_web_api/3,
         verify_email_address_api/2, verify_email_address_api/3]).

-define(BASE_URL, <<"">>).

%% @doc Extract Authors API
%% Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
-spec extract_authors_api(ctx:ctx(), binary()) -> {ok, apileague_extract_authors_api_200_response:apileague_extract_authors_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_authors_api(Ctx, Url) ->
    extract_authors_api(Ctx, Url, #{}).

-spec extract_authors_api(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_extract_authors_api_200_response:apileague_extract_authors_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_authors_api(Ctx, Url, Optional) ->
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

%% @doc Extract Content from a Web Page API
%% Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
-spec extract_content_from_a_web_page_api(ctx:ctx(), binary()) -> {ok, apileague_extract_content_from_a_web_page_api_200_response:apileague_extract_content_from_a_web_page_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_content_from_a_web_page_api(Ctx, Url) ->
    extract_content_from_a_web_page_api(Ctx, Url, #{}).

-spec extract_content_from_a_web_page_api(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_extract_content_from_a_web_page_api_200_response:apileague_extract_content_from_a_web_page_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_content_from_a_web_page_api(Ctx, Url, Optional) ->
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

%% @doc Extract Publish Date API
%% Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
-spec extract_publish_date_api(ctx:ctx(), binary()) -> {ok, apileague_extract_publish_date_api_200_response:apileague_extract_publish_date_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_publish_date_api(Ctx, Url) ->
    extract_publish_date_api(Ctx, Url, #{}).

-spec extract_publish_date_api(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_extract_publish_date_api_200_response:apileague_extract_publish_date_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_publish_date_api(Ctx, Url, Optional) ->
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

%% @doc Retrieve Page Rank API
%% This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
-spec retrieve_page_rank_api(ctx:ctx(), binary()) -> {ok, apileague_retrieve_page_rank_api_200_response:apileague_retrieve_page_rank_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
retrieve_page_rank_api(Ctx, Domain) ->
    retrieve_page_rank_api(Ctx, Domain, #{}).

-spec retrieve_page_rank_api(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_retrieve_page_rank_api_200_response:apileague_retrieve_page_rank_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
retrieve_page_rank_api(Ctx, Domain, Optional) ->
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

%% @doc Search Web API
%% Search the web for a given query. The API returns a list of results with the title, summary, and URL.
-spec search_web_api(ctx:ctx(), binary()) -> {ok, apileague_search_web_api_200_response:apileague_search_web_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_web_api(Ctx, Query) ->
    search_web_api(Ctx, Query, #{}).

-spec search_web_api(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_search_web_api_200_response:apileague_search_web_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_web_api(Ctx, Query, Optional) ->
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

%% @doc Verify Email Address API
%% This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
-spec verify_email_address_api(ctx:ctx(), binary()) -> {ok, apileague_verify_email_address_api_200_response:apileague_verify_email_address_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
verify_email_address_api(Ctx, Email) ->
    verify_email_address_api(Ctx, Email, #{}).

-spec verify_email_address_api(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_verify_email_address_api_200_response:apileague_verify_email_address_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
verify_email_address_api(Ctx, Email, Optional) ->
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


