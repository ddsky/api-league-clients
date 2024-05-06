//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TextApi {
  TextApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Correct Spelling
  ///
  /// The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text to be corrected.
  ///
  /// * [String] language (required):
  ///   The language of the text, one of en, de, es, fr, or it.
  Future<Response> correctSpellingWithHttpInfo(String text, String language,) async {
    // ignore: prefer_const_declarations
    final path = r'/correct-spelling';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'text', text));
      queryParams.addAll(_queryParams('', 'language', language));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Correct Spelling
  ///
  /// The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text to be corrected.
  ///
  /// * [String] language (required):
  ///   The language of the text, one of en, de, es, fr, or it.
  Future<CorrectSpelling200Response?> correctSpelling(String text, String language,) async {
    final response = await correctSpellingWithHttpInfo(text, language,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CorrectSpelling200Response',) as CorrectSpelling200Response;
    
    }
    return null;
  }

  /// Detect Language
  ///
  /// Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text for which the language should be detected.
  Future<Response> detectLanguageWithHttpInfo(String text,) async {
    // ignore: prefer_const_declarations
    final path = r'/detect-language';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'text', text));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Detect Language
  ///
  /// Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text for which the language should be detected.
  Future<List<DetectLanguage200ResponseInner>?> detectLanguage(String text,) async {
    final response = await detectLanguageWithHttpInfo(text,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DetectLanguage200ResponseInner>') as List)
        .cast<DetectLanguage200ResponseInner>()
        .toList(growable: false);

    }
    return null;
  }

  /// Detect Sentiment
  ///
  /// Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text for which the sentiment should be detected.
  Future<Response> detectSentimentWithHttpInfo(String text,) async {
    // ignore: prefer_const_declarations
    final path = r'/detect-sentiment';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'text', text));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Detect Sentiment
  ///
  /// Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text for which the sentiment should be detected.
  Future<DetectSentiment200Response?> detectSentiment(String text,) async {
    final response = await detectSentimentWithHttpInfo(text,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DetectSentiment200Response',) as DetectSentiment200Response;
    
    }
    return null;
  }

  /// Extract Dates
  ///
  /// Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text from which dates should be extracted.
  Future<Response> extractDatesWithHttpInfo(String text,) async {
    // ignore: prefer_const_declarations
    final path = r'/extract-dates';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'text', text));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Extract Dates
  ///
  /// Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text from which dates should be extracted.
  Future<ExtractDates200Response?> extractDates(String text,) async {
    final response = await extractDatesWithHttpInfo(text,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExtractDates200Response',) as ExtractDates200Response;
    
    }
    return null;
  }

  /// Extract Entities
  ///
  /// Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text from which entities should be extracted.
  Future<Response> extractEntitiesWithHttpInfo(String text,) async {
    // ignore: prefer_const_declarations
    final path = r'/extract-entities';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'text', text));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Extract Entities
  ///
  /// Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text from which entities should be extracted.
  Future<ExtractEntities200Response?> extractEntities(String text,) async {
    final response = await extractEntitiesWithHttpInfo(text,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExtractEntities200Response',) as ExtractEntities200Response;
    
    }
    return null;
  }

  /// List Word Synonyms
  ///
  /// Return synonyms of a word.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] word (required):
  ///   The (noun) word for which a list of synonyms should be returned.
  Future<Response> listWordSynonymsWithHttpInfo(String word,) async {
    // ignore: prefer_const_declarations
    final path = r'/list-synonyms';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'word', word));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List Word Synonyms
  ///
  /// Return synonyms of a word.
  ///
  /// Parameters:
  ///
  /// * [String] word (required):
  ///   The (noun) word for which a list of synonyms should be returned.
  Future<ListWordSynonyms200Response?> listWordSynonyms(String word,) async {
    final response = await listWordSynonymsWithHttpInfo(word,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListWordSynonyms200Response',) as ListWordSynonyms200Response;
    
    }
    return null;
  }

  /// Part of Speech Tagging
  ///
  /// Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text to tag the part of speech.
  Future<Response> partOfSpeechTaggingWithHttpInfo(String text,) async {
    // ignore: prefer_const_declarations
    final path = r'/tag-pos';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'text', text));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Part of Speech Tagging
  ///
  /// Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text to tag the part of speech.
  Future<PartOfSpeechTagging200Response?> partOfSpeechTagging(String text,) async {
    final response = await partOfSpeechTaggingWithHttpInfo(text,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PartOfSpeechTagging200Response',) as PartOfSpeechTagging200Response;
    
    }
    return null;
  }

  /// Pluralize Word
  ///
  /// Find the plural form of a word.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] word (required):
  ///   The (noun) word for which the plural form should be found.
  Future<Response> pluralizeWordWithHttpInfo(String word,) async {
    // ignore: prefer_const_declarations
    final path = r'/pluralize-word';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'word', word));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Pluralize Word
  ///
  /// Find the plural form of a word.
  ///
  /// Parameters:
  ///
  /// * [String] word (required):
  ///   The (noun) word for which the plural form should be found.
  Future<PluralizeWord200Response?> pluralizeWord(String word,) async {
    final response = await pluralizeWordWithHttpInfo(word,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PluralizeWord200Response',) as PluralizeWord200Response;
    
    }
    return null;
  }

  /// Score Readability
  ///
  /// Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text to score for readability.
  Future<Response> scoreReadabilityWithHttpInfo(String text,) async {
    // ignore: prefer_const_declarations
    final path = r'/score-readability';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'text', text));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Score Readability
  ///
  /// Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text to score for readability.
  Future<ScoreReadability200Response?> scoreReadability(String text,) async {
    final response = await scoreReadabilityWithHttpInfo(text,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScoreReadability200Response',) as ScoreReadability200Response;
    
    }
    return null;
  }

  /// Score Text
  ///
  /// Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   The title of the text to score.
  ///
  /// * [String] text (required):
  ///   The text to score for multiple metrics.
  Future<Response> scoreTextWithHttpInfo(String title, String text,) async {
    // ignore: prefer_const_declarations
    final path = r'/score-text';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'title', title));
      queryParams.addAll(_queryParams('', 'text', text));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Score Text
  ///
  /// Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   The title of the text to score.
  ///
  /// * [String] text (required):
  ///   The text to score for multiple metrics.
  Future<ScoreText200Response?> scoreText(String title, String text,) async {
    final response = await scoreTextWithHttpInfo(title, text,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScoreText200Response',) as ScoreText200Response;
    
    }
    return null;
  }

  /// Singularize Word
  ///
  /// Find the singular form of a word.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] word (required):
  ///   The (noun) word for which the singular form should be found.
  Future<Response> singularizeWordWithHttpInfo(String word,) async {
    // ignore: prefer_const_declarations
    final path = r'/singularize-word';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'word', word));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Singularize Word
  ///
  /// Find the singular form of a word.
  ///
  /// Parameters:
  ///
  /// * [String] word (required):
  ///   The (noun) word for which the singular form should be found.
  Future<SingularizeWord200Response?> singularizeWord(String word,) async {
    final response = await singularizeWordWithHttpInfo(word,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SingularizeWord200Response',) as SingularizeWord200Response;
    
    }
    return null;
  }

  /// Text Stemming
  ///
  /// The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text to be stemmed.
  Future<Response> textStemmingWithHttpInfo(String text,) async {
    // ignore: prefer_const_declarations
    final path = r'/stem-text';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'text', text));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Text Stemming
  ///
  /// The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text to be stemmed.
  Future<TextStemming200Response?> textStemming(String text,) async {
    final response = await textStemmingWithHttpInfo(text,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TextStemming200Response',) as TextStemming200Response;
    
    }
    return null;
  }
}
