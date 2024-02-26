-module(openapi_text_api).

-export([correct_spelling/3, correct_spelling/4,
         detect_language/2, detect_language/3,
         detect_sentiment/2, detect_sentiment/3,
         extract_dates/2, extract_dates/3,
         extract_entities/2, extract_entities/3,
         list_word_synonyms/2, list_word_synonyms/3,
         part_of_speech_tagging/2, part_of_speech_tagging/3,
         pluralize_word/2, pluralize_word/3,
         score_readability/2, score_readability/3,
         score_text/3, score_text/4,
         singularize_word/2, singularize_word/3,
         text_stemming/2, text_stemming/3]).

-define(BASE_URL, <<"">>).

%% @doc Correct Spelling
%% The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
-spec correct_spelling(ctx:ctx(), binary(), binary()) -> {ok, openapi_inline_response_200_16:openapi_inline_response_200_16(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
correct_spelling(Ctx, Text, Language) ->
    correct_spelling(Ctx, Text, Language, #{}).

-spec correct_spelling(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_inline_response_200_16:openapi_inline_response_200_16(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
correct_spelling(Ctx, Text, Language, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/correct-spelling">>],
    QS = lists:flatten([{<<"text">>, Text}, {<<"language">>, Language}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Detect Language
%% Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
-spec detect_language(ctx:ctx(), binary()) -> {ok, [openapi_inline_response_200_17:openapi_inline_response_200_17()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
detect_language(Ctx, Text) ->
    detect_language(Ctx, Text, #{}).

-spec detect_language(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_inline_response_200_17:openapi_inline_response_200_17()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
detect_language(Ctx, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/detect-language">>],
    QS = lists:flatten([{<<"text">>, Text}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Detect Sentiment
%% Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
-spec detect_sentiment(ctx:ctx(), binary()) -> {ok, openapi_inline_response_200_18:openapi_inline_response_200_18(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
detect_sentiment(Ctx, Text) ->
    detect_sentiment(Ctx, Text, #{}).

-spec detect_sentiment(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_inline_response_200_18:openapi_inline_response_200_18(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
detect_sentiment(Ctx, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/detect-sentiment">>],
    QS = lists:flatten([{<<"text">>, Text}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Extract Dates
%% Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
-spec extract_dates(ctx:ctx(), binary()) -> {ok, openapi_inline_response_200_21:openapi_inline_response_200_21(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
extract_dates(Ctx, Text) ->
    extract_dates(Ctx, Text, #{}).

-spec extract_dates(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_inline_response_200_21:openapi_inline_response_200_21(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
extract_dates(Ctx, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/extract-dates">>],
    QS = lists:flatten([{<<"text">>, Text}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Extract Entities
%% Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
-spec extract_entities(ctx:ctx(), binary()) -> {ok, openapi_inline_response_200_27:openapi_inline_response_200_27(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
extract_entities(Ctx, Text) ->
    extract_entities(Ctx, Text, #{}).

-spec extract_entities(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_inline_response_200_27:openapi_inline_response_200_27(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
extract_entities(Ctx, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/extract-entities">>],
    QS = lists:flatten([{<<"text">>, Text}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Word Synonyms
%% Return synonyms of a word.
-spec list_word_synonyms(ctx:ctx(), binary()) -> {ok, openapi_inline_response_200_22:openapi_inline_response_200_22(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_word_synonyms(Ctx, Word) ->
    list_word_synonyms(Ctx, Word, #{}).

-spec list_word_synonyms(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_inline_response_200_22:openapi_inline_response_200_22(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_word_synonyms(Ctx, Word, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/list-synonyms">>],
    QS = lists:flatten([{<<"word">>, Word}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Part of Speech Tagging
%% Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
-spec part_of_speech_tagging(ctx:ctx(), binary()) -> {ok, openapi_inline_response_200_23:openapi_inline_response_200_23(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
part_of_speech_tagging(Ctx, Text) ->
    part_of_speech_tagging(Ctx, Text, #{}).

-spec part_of_speech_tagging(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_inline_response_200_23:openapi_inline_response_200_23(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
part_of_speech_tagging(Ctx, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/tag-pos">>],
    QS = lists:flatten([{<<"text">>, Text}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Pluralize Word
%% Find the plural form of a word.
-spec pluralize_word(ctx:ctx(), binary()) -> {ok, openapi_inline_response_200_26:openapi_inline_response_200_26(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pluralize_word(Ctx, Word) ->
    pluralize_word(Ctx, Word, #{}).

-spec pluralize_word(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_inline_response_200_26:openapi_inline_response_200_26(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pluralize_word(Ctx, Word, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/pluralize-word">>],
    QS = lists:flatten([{<<"word">>, Word}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Score Readability
%% Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
-spec score_readability(ctx:ctx(), binary()) -> {ok, openapi_inline_response_200_20:openapi_inline_response_200_20(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
score_readability(Ctx, Text) ->
    score_readability(Ctx, Text, #{}).

-spec score_readability(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_inline_response_200_20:openapi_inline_response_200_20(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
score_readability(Ctx, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/score-readability">>],
    QS = lists:flatten([{<<"text">>, Text}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Score Text
%% Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
-spec score_text(ctx:ctx(), binary(), binary()) -> {ok, openapi_inline_response_200_19:openapi_inline_response_200_19(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
score_text(Ctx, Title, Text) ->
    score_text(Ctx, Title, Text, #{}).

-spec score_text(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_inline_response_200_19:openapi_inline_response_200_19(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
score_text(Ctx, Title, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/score-text">>],
    QS = lists:flatten([{<<"title">>, Title}, {<<"text">>, Text}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Singularize Word
%% Find the singular form of a word.
-spec singularize_word(ctx:ctx(), binary()) -> {ok, openapi_inline_response_200_25:openapi_inline_response_200_25(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
singularize_word(Ctx, Word) ->
    singularize_word(Ctx, Word, #{}).

-spec singularize_word(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_inline_response_200_25:openapi_inline_response_200_25(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
singularize_word(Ctx, Word, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/singularize-word">>],
    QS = lists:flatten([{<<"word">>, Word}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Text Stemming
%% The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
-spec text_stemming(ctx:ctx(), binary()) -> {ok, openapi_inline_response_200_24:openapi_inline_response_200_24(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
text_stemming(Ctx, Text) ->
    text_stemming(Ctx, Text, #{}).

-spec text_stemming(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_inline_response_200_24:openapi_inline_response_200_24(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
text_stemming(Ctx, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/stem-text">>],
    QS = lists:flatten([{<<"text">>, Text}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


