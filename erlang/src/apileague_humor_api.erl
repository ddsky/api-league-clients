-module(apileague_humor_api).

-export([generate_nonsense_word_api/1, generate_nonsense_word_api/2,
         random_joke_api/1, random_joke_api/2,
         random_meme_api/1, random_meme_api/2,
         search_gifs_api/2, search_gifs_api/3,
         search_jokes_api/1, search_jokes_api/2,
         search_memes_api/1, search_memes_api/2]).

-define(BASE_URL, <<"">>).

%% @doc Generate Nonsense Word API
%% Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
-spec generate_nonsense_word_api(ctx:ctx()) -> {ok, apileague_generate_nonsense_word_api_200_response:apileague_generate_nonsense_word_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
generate_nonsense_word_api(Ctx) ->
    generate_nonsense_word_api(Ctx, #{}).

-spec generate_nonsense_word_api(ctx:ctx(), maps:map()) -> {ok, apileague_generate_nonsense_word_api_200_response:apileague_generate_nonsense_word_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
generate_nonsense_word_api(Ctx, Optional) ->
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

%% @doc Random Joke API
%% This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
-spec random_joke_api(ctx:ctx()) -> {ok, apileague_search_jokes_api_200_response_jokes_inner:apileague_search_jokes_api_200_response_jokes_inner(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_joke_api(Ctx) ->
    random_joke_api(Ctx, #{}).

-spec random_joke_api(ctx:ctx(), maps:map()) -> {ok, apileague_search_jokes_api_200_response_jokes_inner:apileague_search_jokes_api_200_response_jokes_inner(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_joke_api(Ctx, Optional) ->
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

%% @doc Random Meme API
%% Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.
-spec random_meme_api(ctx:ctx()) -> {ok, apileague_random_meme_api_200_response:apileague_random_meme_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_meme_api(Ctx) ->
    random_meme_api(Ctx, #{}).

-spec random_meme_api(ctx:ctx(), maps:map()) -> {ok, apileague_random_meme_api_200_response:apileague_random_meme_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
random_meme_api(Ctx, Optional) ->
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

%% @doc Search Gifs API
%% Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
-spec search_gifs_api(ctx:ctx(), binary()) -> {ok, apileague_search_gifs_api_200_response:apileague_search_gifs_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_gifs_api(Ctx, Query) ->
    search_gifs_api(Ctx, Query, #{}).

-spec search_gifs_api(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_search_gifs_api_200_response:apileague_search_gifs_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_gifs_api(Ctx, Query, Optional) ->
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

%% @doc Search Jokes API
%% With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
-spec search_jokes_api(ctx:ctx()) -> {ok, apileague_search_jokes_api_200_response:apileague_search_jokes_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_jokes_api(Ctx) ->
    search_jokes_api(Ctx, #{}).

-spec search_jokes_api(ctx:ctx(), maps:map()) -> {ok, apileague_search_jokes_api_200_response:apileague_search_jokes_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_jokes_api(Ctx, Optional) ->
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

%% @doc Search Memes API
%% Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You'll surely find something funny.
-spec search_memes_api(ctx:ctx()) -> {ok, apileague_search_memes_api_200_response:apileague_search_memes_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_memes_api(Ctx) ->
    search_memes_api(Ctx, #{}).

-spec search_memes_api(ctx:ctx(), maps:map()) -> {ok, apileague_search_memes_api_200_response:apileague_search_memes_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_memes_api(Ctx, Optional) ->
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


