-module(apileague_books_api).

-export([find_similar_books_api/2, find_similar_books_api/3,
         search_books_api/1, search_books_api/2]).

-define(BASE_URL, <<"">>).

%% @doc Find Similar Books API
%% Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
-spec find_similar_books_api(ctx:ctx(), integer()) -> {ok, apileague_find_similar_books_api_200_response:apileague_find_similar_books_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
find_similar_books_api(Ctx, Id) ->
    find_similar_books_api(Ctx, Id, #{}).

-spec find_similar_books_api(ctx:ctx(), integer(), maps:map()) -> {ok, apileague_find_similar_books_api_200_response:apileague_find_similar_books_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
find_similar_books_api(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/list-similar-books"],
    QS = lists:flatten([{<<"id">>, Id}])++apileague_utils:optional_params(['number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Books API
%% Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
-spec search_books_api(ctx:ctx()) -> {ok, apileague_search_books_api_200_response:apileague_search_books_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_books_api(Ctx) ->
    search_books_api(Ctx, #{}).

-spec search_books_api(ctx:ctx(), maps:map()) -> {ok, apileague_search_books_api_200_response:apileague_search_books_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_books_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/search-books"],
    QS = lists:flatten([])++apileague_utils:optional_params(['query', 'earliest-publish-year', 'latest-publish-year', 'min-rating', 'max-rating', 'genres', 'authors', 'isbn', 'oclc', 'sort', 'sort-direction', 'group-results', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


