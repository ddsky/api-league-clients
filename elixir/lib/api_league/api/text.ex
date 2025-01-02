# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Api.Text do
  @moduledoc """
  API calls for all endpoints tagged `Text`.
  """

  alias APILeague.Connection
  import APILeague.RequestBuilder

  @doc """
  Correct Spelling API
  The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `text` (String.t): The text to be corrected.
  - `language` (String.t): The language of the text, one of en, de, es, fr, or it.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APILeague.Model.CorrectSpellingApi200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec correct_spelling_api(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, APILeague.Model.CorrectSpellingApi200Response.t} | {:ok, nil} | {:error, Tesla.Env.t}
  def correct_spelling_api(connection, text, language, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/correct-spelling")
      |> add_param(:query, :text, text)
      |> add_param(:query, :language, language)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.CorrectSpellingApi200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Detect Gender by Name API
  Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `name` (String.t): The name of the perso for which the sentiment should be detected.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APILeague.Model.DetectGenderByNameApi200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec detect_gender_by_name_api(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, APILeague.Model.DetectGenderByNameApi200Response.t} | {:error, Tesla.Env.t}
  def detect_gender_by_name_api(connection, name, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/detect-gender")
      |> add_param(:query, :name, name)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.DetectGenderByNameApi200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Detect Language API
  Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `text` (String.t): The text for which the language should be detected.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%DetectLanguageApi200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec detect_language_api(Tesla.Env.client, String.t, keyword()) :: {:ok, [APILeague.Model.DetectLanguageApi200ResponseInner.t]} | {:ok, nil} | {:error, Tesla.Env.t}
  def detect_language_api(connection, text, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/detect-language")
      |> add_param(:query, :text, text)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.DetectLanguageApi200ResponseInner},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Detect Sentiment API
  Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `text` (String.t): The text for which the sentiment should be detected.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APILeague.Model.DetectSentimentApi200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec detect_sentiment_api(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, APILeague.Model.DetectSentimentApi200Response.t} | {:error, Tesla.Env.t}
  def detect_sentiment_api(connection, text, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/detect-sentiment")
      |> add_param(:query, :text, text)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.DetectSentimentApi200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Extract Dates API
  Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `text` (String.t): The text from which dates should be extracted.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APILeague.Model.ExtractDatesApi200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec extract_dates_api(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, APILeague.Model.ExtractDatesApi200Response.t} | {:error, Tesla.Env.t}
  def extract_dates_api(connection, text, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/extract-dates")
      |> add_param(:query, :text, text)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.ExtractDatesApi200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Extract Entities API
  Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `text` (String.t): The text from which entities should be extracted.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APILeague.Model.ExtractEntitiesApi200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec extract_entities_api(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, APILeague.Model.ExtractEntitiesApi200Response.t} | {:error, Tesla.Env.t}
  def extract_entities_api(connection, text, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/extract-entities")
      |> add_param(:query, :text, text)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.ExtractEntitiesApi200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  List Word Synonyms API
  Return synonyms of a word.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `word` (String.t): The (noun) word for which a list of synonyms should be returned.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APILeague.Model.ListWordSynonymsApi200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_word_synonyms_api(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, APILeague.Model.ListWordSynonymsApi200Response.t} | {:error, Tesla.Env.t}
  def list_word_synonyms_api(connection, word, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/list-synonyms")
      |> add_param(:query, :word, word)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.ListWordSynonymsApi200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Pluralize Word API
  Find the plural form of a word.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `word` (String.t): The (noun) word for which the plural form should be found.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APILeague.Model.PluralizeWordApi200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec pluralize_word_api(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, APILeague.Model.PluralizeWordApi200Response.t} | {:error, Tesla.Env.t}
  def pluralize_word_api(connection, word, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/pluralize-word")
      |> add_param(:query, :word, word)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.PluralizeWordApi200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Score Readability API
  Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `text` (String.t): The text to score for readability.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APILeague.Model.ScoreReadabilityApi200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec score_readability_api(Tesla.Env.client, String.t, keyword()) :: {:ok, APILeague.Model.ScoreReadabilityApi200Response.t} | {:ok, nil} | {:error, Tesla.Env.t}
  def score_readability_api(connection, text, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/score-readability")
      |> add_param(:query, :text, text)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.ScoreReadabilityApi200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Score Text API
  Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `title` (String.t): The title of the text to score.
  - `text` (String.t): The text to score for multiple metrics.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APILeague.Model.ScoreTextApi200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec score_text_api(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, APILeague.Model.ScoreTextApi200Response.t} | {:ok, nil} | {:error, Tesla.Env.t}
  def score_text_api(connection, title, text, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/score-text")
      |> add_param(:query, :title, title)
      |> add_param(:query, :text, text)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.ScoreTextApi200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Singularize Word API
  Find the singular form of a word.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `word` (String.t): The (noun) word for which the singular form should be found.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APILeague.Model.SingularizeWordApi200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec singularize_word_api(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, APILeague.Model.SingularizeWordApi200Response.t} | {:error, Tesla.Env.t}
  def singularize_word_api(connection, word, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/singularize-word")
      |> add_param(:query, :word, word)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.SingularizeWordApi200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Stem Text API
  The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `text` (String.t): The text to be stemmed.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APILeague.Model.StemTextApi200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec stem_text_api(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, APILeague.Model.StemTextApi200Response.t} | {:error, Tesla.Env.t}
  def stem_text_api(connection, text, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/stem-text")
      |> add_param(:query, :text, text)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.StemTextApi200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Tag Part of Speech API
  Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `text` (String.t): The text to tag the part of speech.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APILeague.Model.TagPartOfSpeechApi200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec tag_part_of_speech_api(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, APILeague.Model.TagPartOfSpeechApi200Response.t} | {:error, Tesla.Env.t}
  def tag_part_of_speech_api(connection, text, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/tag-pos")
      |> add_param(:query, :text, text)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.TagPartOfSpeechApi200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end
end
