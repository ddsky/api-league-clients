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

  /// Correct Spelling API
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
  Future<Response> correctSpellingAPIWithHttpInfo(String text, String language,) async {
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

  /// Correct Spelling API
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
  Future<CorrectSpellingAPI200Response?> correctSpellingAPI(String text, String language,) async {
    final response = await correctSpellingAPIWithHttpInfo(text, language,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CorrectSpellingAPI200Response',) as CorrectSpellingAPI200Response;
    
    }
    return null;
  }

  /// Detect Gender by Name API
  ///
  /// Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the perso for which the sentiment should be detected.
  Future<Response> detectGenderByNameAPIWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/detect-gender';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'name', name));

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

  /// Detect Gender by Name API
  ///
  /// Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the perso for which the sentiment should be detected.
  Future<DetectGenderByNameAPI200Response?> detectGenderByNameAPI(String name,) async {
    final response = await detectGenderByNameAPIWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DetectGenderByNameAPI200Response',) as DetectGenderByNameAPI200Response;
    
    }
    return null;
  }

  /// Detect Language API
  ///
  /// Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text for which the language should be detected.
  Future<Response> detectLanguageAPIWithHttpInfo(String text,) async {
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

  /// Detect Language API
  ///
  /// Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text for which the language should be detected.
  Future<List<DetectLanguageAPI200ResponseInner>?> detectLanguageAPI(String text,) async {
    final response = await detectLanguageAPIWithHttpInfo(text,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DetectLanguageAPI200ResponseInner>') as List)
        .cast<DetectLanguageAPI200ResponseInner>()
        .toList(growable: false);

    }
    return null;
  }

  /// Detect Sentiment API
  ///
  /// Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text for which the sentiment should be detected.
  Future<Response> detectSentimentAPIWithHttpInfo(String text,) async {
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

  /// Detect Sentiment API
  ///
  /// Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text for which the sentiment should be detected.
  Future<DetectSentimentAPI200Response?> detectSentimentAPI(String text,) async {
    final response = await detectSentimentAPIWithHttpInfo(text,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DetectSentimentAPI200Response',) as DetectSentimentAPI200Response;
    
    }
    return null;
  }

  /// Extract Dates API
  ///
  /// Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text from which dates should be extracted.
  Future<Response> extractDatesAPIWithHttpInfo(String text,) async {
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

  /// Extract Dates API
  ///
  /// Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text from which dates should be extracted.
  Future<ExtractDatesAPI200Response?> extractDatesAPI(String text,) async {
    final response = await extractDatesAPIWithHttpInfo(text,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExtractDatesAPI200Response',) as ExtractDatesAPI200Response;
    
    }
    return null;
  }

  /// Extract Entities API
  ///
  /// Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text from which entities should be extracted.
  Future<Response> extractEntitiesAPIWithHttpInfo(String text,) async {
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

  /// Extract Entities API
  ///
  /// Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text from which entities should be extracted.
  Future<ExtractEntitiesAPI200Response?> extractEntitiesAPI(String text,) async {
    final response = await extractEntitiesAPIWithHttpInfo(text,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExtractEntitiesAPI200Response',) as ExtractEntitiesAPI200Response;
    
    }
    return null;
  }

  /// List Word Synonyms API
  ///
  /// Return synonyms of a word.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] word (required):
  ///   The (noun) word for which a list of synonyms should be returned.
  Future<Response> listWordSynonymsAPIWithHttpInfo(String word,) async {
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

  /// List Word Synonyms API
  ///
  /// Return synonyms of a word.
  ///
  /// Parameters:
  ///
  /// * [String] word (required):
  ///   The (noun) word for which a list of synonyms should be returned.
  Future<ListWordSynonymsAPI200Response?> listWordSynonymsAPI(String word,) async {
    final response = await listWordSynonymsAPIWithHttpInfo(word,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListWordSynonymsAPI200Response',) as ListWordSynonymsAPI200Response;
    
    }
    return null;
  }

  /// Pluralize Word API
  ///
  /// Find the plural form of a word.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] word (required):
  ///   The (noun) word for which the plural form should be found.
  Future<Response> pluralizeWordAPIWithHttpInfo(String word,) async {
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

  /// Pluralize Word API
  ///
  /// Find the plural form of a word.
  ///
  /// Parameters:
  ///
  /// * [String] word (required):
  ///   The (noun) word for which the plural form should be found.
  Future<PluralizeWordAPI200Response?> pluralizeWordAPI(String word,) async {
    final response = await pluralizeWordAPIWithHttpInfo(word,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PluralizeWordAPI200Response',) as PluralizeWordAPI200Response;
    
    }
    return null;
  }

  /// Score Readability API
  ///
  /// Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text to score for readability.
  Future<Response> scoreReadabilityAPIWithHttpInfo(String text,) async {
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

  /// Score Readability API
  ///
  /// Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text to score for readability.
  Future<ScoreReadabilityAPI200Response?> scoreReadabilityAPI(String text,) async {
    final response = await scoreReadabilityAPIWithHttpInfo(text,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScoreReadabilityAPI200Response',) as ScoreReadabilityAPI200Response;
    
    }
    return null;
  }

  /// Score Text API
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
  Future<Response> scoreTextAPIWithHttpInfo(String title, String text,) async {
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

  /// Score Text API
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
  Future<ScoreTextAPI200Response?> scoreTextAPI(String title, String text,) async {
    final response = await scoreTextAPIWithHttpInfo(title, text,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScoreTextAPI200Response',) as ScoreTextAPI200Response;
    
    }
    return null;
  }

  /// Singularize Word API
  ///
  /// Find the singular form of a word.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] word (required):
  ///   The (noun) word for which the singular form should be found.
  Future<Response> singularizeWordAPIWithHttpInfo(String word,) async {
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

  /// Singularize Word API
  ///
  /// Find the singular form of a word.
  ///
  /// Parameters:
  ///
  /// * [String] word (required):
  ///   The (noun) word for which the singular form should be found.
  Future<SingularizeWordAPI200Response?> singularizeWordAPI(String word,) async {
    final response = await singularizeWordAPIWithHttpInfo(word,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SingularizeWordAPI200Response',) as SingularizeWordAPI200Response;
    
    }
    return null;
  }

  /// Stem Text API
  ///
  /// The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text to be stemmed.
  Future<Response> stemTextAPIWithHttpInfo(String text,) async {
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

  /// Stem Text API
  ///
  /// The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text to be stemmed.
  Future<StemTextAPI200Response?> stemTextAPI(String text,) async {
    final response = await stemTextAPIWithHttpInfo(text,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StemTextAPI200Response',) as StemTextAPI200Response;
    
    }
    return null;
  }

  /// Tag Part of Speech API
  ///
  /// Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text to tag the part of speech.
  Future<Response> tagPartOfSpeechAPIWithHttpInfo(String text,) async {
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

  /// Tag Part of Speech API
  ///
  /// Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The text to tag the part of speech.
  Future<TagPartOfSpeechAPI200Response?> tagPartOfSpeechAPI(String text,) async {
    final response = await tagPartOfSpeechAPIWithHttpInfo(text,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TagPartOfSpeechAPI200Response',) as TagPartOfSpeechAPI200Response;
    
    }
    return null;
  }
}
