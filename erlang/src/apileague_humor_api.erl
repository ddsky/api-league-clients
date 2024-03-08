-module(apileague_humor_api).

-export([generate_nonsense_word/1, generate_nonsense_word/2,
         random_joke/1, random_joke/2,
         random_meme/1, random_meme/2,
         search_gifs/2, search_gifs/3,
         search_jokes/1, search_jokes/2,
         search_memes/1, search_memes/2]).

-define(BASE_URL, <<"">>).

%% @doc Generate Nonsense Word
%% Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
-spec generate_nonsense_word(ctx:ctx()) -> {ok, apileague_generate_nonsense_word_200_response:apileague_generate_nonsense_word_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
generate_nonsense_word(Ctx) ->
    generate_nonsense_word(Ctx, #{}).

-spec generate_nonsense_word(ctx:ctx(), maps:map()) -> {ok, apileague_generate_nonsense_word_200_response:apileague_generate_nonsense_word_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
generate_nonsense_word(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/generate-nonsense-word"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Random Joke
%% This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
-spec random_joke(ctx:ctx()) -> {ok, apileague_search_jokes_200_response_jokes_inner:apileague_search_jokes_200_response_jokes_inner(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_joke(Ctx) ->
    random_joke(Ctx, #{}).

-spec random_joke(ctx:ctx(), maps:map()) -> {ok, apileague_search_jokes_200_response_jokes_inner:apileague_search_jokes_200_response_jokes_inner(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_joke(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/retrieve-random-joke"],
    QS = lists:flatten([])++apileague_utils:optional_params(['include-tags', 'exclude-tags', 'min-rating', 'max-length'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Random Meme
%% Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
-spec random_meme(ctx:ctx()) -> {ok, apileague_random_meme_200_response:apileague_random_meme_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_meme(Ctx) ->
    random_meme(Ctx, #{}).

-spec random_meme(ctx:ctx(), maps:map()) -> {ok, apileague_random_meme_200_response:apileague_random_meme_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_meme(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/retrieve-random-meme"],
    QS = lists:flatten([])++apileague_utils:optional_params(['keywords', 'keywords-in-image', 'media-type', 'min-rating', 'max-age-days'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Gifs
%% Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
-spec search_gifs(ctx:ctx(), binary()) -> {ok, apileague_search_gifs_200_response:apileague_search_gifs_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_gifs(Ctx, Query) ->
    search_gifs(Ctx, Query, #{}).

-spec search_gifs(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_search_gifs_200_response:apileague_search_gifs_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_gifs(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/search-gifs"],
    QS = lists:flatten([{<<"query">>, Query}])++apileague_utils:optional_params(['number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Jokes
%% With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
-spec search_jokes(ctx:ctx()) -> {ok, apileague_search_jokes_200_response:apileague_search_jokes_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_jokes(Ctx) ->
    search_jokes(Ctx, #{}).

-spec search_jokes(ctx:ctx(), maps:map()) -> {ok, apileague_search_jokes_200_response:apileague_search_jokes_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_jokes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/search-jokes"],
    QS = lists:flatten([])++apileague_utils:optional_params(['keywords', 'include-tags', 'exclude-tags', 'min-rating', 'max-length', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Memes
%% With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.
-spec search_memes(ctx:ctx()) -> {ok, apileague_search_memes_200_response:apileague_search_memes_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_memes(Ctx) ->
    search_memes(Ctx, #{}).

-spec search_memes(ctx:ctx(), maps:map()) -> {ok, apileague_search_memes_200_response:apileague_search_memes_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_memes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/search-memes"],
    QS = lists:flatten([])++apileague_utils:optional_params(['keywords', 'keywords-in-image', 'media-type', 'min-rating', 'max-age-days', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


