-module(openapi_books_api).

-export([find_similar_books/2, find_similar_books/3,
         search_books/1, search_books/2]).

-define(BASE_URL, <<"">>).

%% @doc Find Similar Books
%% Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
-spec find_similar_books(ctx:ctx(), integer()) -> {ok, openapi_inline_response_200_1:openapi_inline_response_200_1(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
find_similar_books(Ctx, Id) ->
    find_similar_books(Ctx, Id, #{}).

-spec find_similar_books(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_inline_response_200_1:openapi_inline_response_200_1(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
find_similar_books(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/list-similar-books">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Books
%% Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query.
-spec search_books(ctx:ctx()) -> {ok, openapi_inline_response_200:openapi_inline_response_200(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
search_books(Ctx) ->
    search_books(Ctx, #{}).

-spec search_books(ctx:ctx(), maps:map()) -> {ok, openapi_inline_response_200:openapi_inline_response_200(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
search_books(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/search-books">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['query', 'earliest-publish-year', 'latest-publish-year', 'min-rating', 'max-rating', 'genres', 'authors', 'isbn', 'oclc', 'sort', 'sort-direction', 'group-results', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


