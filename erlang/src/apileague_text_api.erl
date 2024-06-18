-module(apileague_text_api).

-export([correct_spelling/3, correct_spelling/4,
         detect_gender_by_name/2, detect_gender_by_name/3,
         detect_language/2, detect_language/3,
         detect_sentiment/2, detect_sentiment/3,
         extract_dates/2, extract_dates/3,
         extract_entities/2, extract_entities/3,
         list_word_synonyms/2, list_word_synonyms/3,
         pluralize_word/2, pluralize_word/3,
         score_readability/2, score_readability/3,
         score_text/3, score_text/4,
         singularize_word/2, singularize_word/3,
         stem_text/2, stem_text/3,
         tag_part_of_speech/2, tag_part_of_speech/3]).

-define(BASE_URL, <<"">>).

%% @doc Correct Spelling
%% The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
-spec correct_spelling(ctx:ctx(), binary(), binary()) -> {ok, apileague_correct_spelling_200_response:apileague_correct_spelling_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
correct_spelling(Ctx, Text, Language) ->
    correct_spelling(Ctx, Text, Language, #{}).

-spec correct_spelling(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, apileague_correct_spelling_200_response:apileague_correct_spelling_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
correct_spelling(Ctx, Text, Language, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/correct-spelling"],
    QS = lists:flatten([{<<"text">>, Text}, {<<"language">>, Language}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Detect Gender by Name
%% Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.
-spec detect_gender_by_name(ctx:ctx(), binary()) -> {ok, apileague_detect_gender_by_name_200_response:apileague_detect_gender_by_name_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
detect_gender_by_name(Ctx, Name) ->
    detect_gender_by_name(Ctx, Name, #{}).

-spec detect_gender_by_name(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_detect_gender_by_name_200_response:apileague_detect_gender_by_name_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
detect_gender_by_name(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/detect-gender"],
    QS = lists:flatten([{<<"name">>, Name}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Detect Language
%% Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
-spec detect_language(ctx:ctx(), binary()) -> {ok, [apileague_detect_language_200_response_inner:apileague_detect_language_200_response_inner()], apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
detect_language(Ctx, Text) ->
    detect_language(Ctx, Text, #{}).

-spec detect_language(ctx:ctx(), binary(), maps:map()) -> {ok, [apileague_detect_language_200_response_inner:apileague_detect_language_200_response_inner()], apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
detect_language(Ctx, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/detect-language"],
    QS = lists:flatten([{<<"text">>, Text}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Detect Sentiment
%% Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
-spec detect_sentiment(ctx:ctx(), binary()) -> {ok, apileague_detect_sentiment_200_response:apileague_detect_sentiment_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
detect_sentiment(Ctx, Text) ->
    detect_sentiment(Ctx, Text, #{}).

-spec detect_sentiment(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_detect_sentiment_200_response:apileague_detect_sentiment_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
detect_sentiment(Ctx, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/detect-sentiment"],
    QS = lists:flatten([{<<"text">>, Text}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Extract Dates
%% Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
-spec extract_dates(ctx:ctx(), binary()) -> {ok, apileague_extract_dates_200_response:apileague_extract_dates_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_dates(Ctx, Text) ->
    extract_dates(Ctx, Text, #{}).

-spec extract_dates(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_extract_dates_200_response:apileague_extract_dates_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_dates(Ctx, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/extract-dates"],
    QS = lists:flatten([{<<"text">>, Text}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Extract Entities
%% Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
-spec extract_entities(ctx:ctx(), binary()) -> {ok, apileague_extract_entities_200_response:apileague_extract_entities_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_entities(Ctx, Text) ->
    extract_entities(Ctx, Text, #{}).

-spec extract_entities(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_extract_entities_200_response:apileague_extract_entities_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
extract_entities(Ctx, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/extract-entities"],
    QS = lists:flatten([{<<"text">>, Text}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Word Synonyms
%% Return synonyms of a word.
-spec list_word_synonyms(ctx:ctx(), binary()) -> {ok, apileague_list_word_synonyms_200_response:apileague_list_word_synonyms_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
list_word_synonyms(Ctx, Word) ->
    list_word_synonyms(Ctx, Word, #{}).

-spec list_word_synonyms(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_list_word_synonyms_200_response:apileague_list_word_synonyms_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
list_word_synonyms(Ctx, Word, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/list-synonyms"],
    QS = lists:flatten([{<<"word">>, Word}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Pluralize Word
%% Find the plural form of a word.
-spec pluralize_word(ctx:ctx(), binary()) -> {ok, apileague_pluralize_word_200_response:apileague_pluralize_word_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
pluralize_word(Ctx, Word) ->
    pluralize_word(Ctx, Word, #{}).

-spec pluralize_word(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_pluralize_word_200_response:apileague_pluralize_word_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
pluralize_word(Ctx, Word, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/pluralize-word"],
    QS = lists:flatten([{<<"word">>, Word}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Score Readability
%% Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
-spec score_readability(ctx:ctx(), binary()) -> {ok, apileague_score_readability_200_response:apileague_score_readability_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
score_readability(Ctx, Text) ->
    score_readability(Ctx, Text, #{}).

-spec score_readability(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_score_readability_200_response:apileague_score_readability_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
score_readability(Ctx, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/score-readability"],
    QS = lists:flatten([{<<"text">>, Text}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Score Text
%% Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
-spec score_text(ctx:ctx(), binary(), binary()) -> {ok, apileague_score_text_200_response:apileague_score_text_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
score_text(Ctx, Title, Text) ->
    score_text(Ctx, Title, Text, #{}).

-spec score_text(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, apileague_score_text_200_response:apileague_score_text_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
score_text(Ctx, Title, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/score-text"],
    QS = lists:flatten([{<<"title">>, Title}, {<<"text">>, Text}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Singularize Word
%% Find the singular form of a word.
-spec singularize_word(ctx:ctx(), binary()) -> {ok, apileague_singularize_word_200_response:apileague_singularize_word_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
singularize_word(Ctx, Word) ->
    singularize_word(Ctx, Word, #{}).

-spec singularize_word(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_singularize_word_200_response:apileague_singularize_word_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
singularize_word(Ctx, Word, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/singularize-word"],
    QS = lists:flatten([{<<"word">>, Word}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Stem Text
%% The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
-spec stem_text(ctx:ctx(), binary()) -> {ok, apileague_stem_text_200_response:apileague_stem_text_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
stem_text(Ctx, Text) ->
    stem_text(Ctx, Text, #{}).

-spec stem_text(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_stem_text_200_response:apileague_stem_text_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
stem_text(Ctx, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/stem-text"],
    QS = lists:flatten([{<<"text">>, Text}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Tag Part of Speech
%% Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
-spec tag_part_of_speech(ctx:ctx(), binary()) -> {ok, apileague_tag_part_of_speech_200_response:apileague_tag_part_of_speech_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
tag_part_of_speech(Ctx, Text) ->
    tag_part_of_speech(Ctx, Text, #{}).

-spec tag_part_of_speech(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_tag_part_of_speech_200_response:apileague_tag_part_of_speech_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
tag_part_of_speech(Ctx, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/tag-pos"],
    QS = lists:flatten([{<<"text">>, Text}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


