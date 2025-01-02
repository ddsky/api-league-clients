//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class KnowledgeApi {
  KnowledgeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Random Quote API
  ///
  /// This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] minLength:
  ///   The minimum length of the quote in letters.
  ///
  /// * [int] maxLength:
  ///   The maximum length of the quote in letters.
  Future<Response> randomQuoteAPIWithHttpInfo({ int? minLength, int? maxLength, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retrieve-random-quote';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (minLength != null) {
      queryParams.addAll(_queryParams('', 'min-length', minLength));
    }
    if (maxLength != null) {
      queryParams.addAll(_queryParams('', 'max-length', maxLength));
    }

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

  /// Random Quote API
  ///
  /// This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
  ///
  /// Parameters:
  ///
  /// * [int] minLength:
  ///   The minimum length of the quote in letters.
  ///
  /// * [int] maxLength:
  ///   The maximum length of the quote in letters.
  Future<RandomQuoteAPI200Response?> randomQuoteAPI({ int? minLength, int? maxLength, }) async {
    final response = await randomQuoteAPIWithHttpInfo( minLength: minLength, maxLength: maxLength, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RandomQuoteAPI200Response',) as RandomQuoteAPI200Response;
    
    }
    return null;
  }

  /// Random Riddle API
  ///
  /// The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] difficulty:
  ///   The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\".
  Future<Response> randomRiddleAPIWithHttpInfo({ String? difficulty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retrieve-random-riddle';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (difficulty != null) {
      queryParams.addAll(_queryParams('', 'difficulty', difficulty));
    }

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

  /// Random Riddle API
  ///
  /// The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.
  ///
  /// Parameters:
  ///
  /// * [String] difficulty:
  ///   The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\".
  Future<RandomRiddleAPI200Response?> randomRiddleAPI({ String? difficulty, }) async {
    final response = await randomRiddleAPIWithHttpInfo( difficulty: difficulty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RandomRiddleAPI200Response',) as RandomRiddleAPI200Response;
    
    }
    return null;
  }

  /// Random Trivia API
  ///
  /// This endpoint returns a random piece of trivia like \"Rio de Janeiro was once the capital of Portugal, making it the only European capital outside of Europe.\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] maxLength:
  ///   The maximum length of the trivia in letters.
  Future<Response> randomTriviaAPIWithHttpInfo({ int? maxLength, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retrieve-random-trivia';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (maxLength != null) {
      queryParams.addAll(_queryParams('', 'max-length', maxLength));
    }

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

  /// Random Trivia API
  ///
  /// This endpoint returns a random piece of trivia like \"Rio de Janeiro was once the capital of Portugal, making it the only European capital outside of Europe.\".
  ///
  /// Parameters:
  ///
  /// * [int] maxLength:
  ///   The maximum length of the trivia in letters.
  Future<RandomTriviaAPI200Response?> randomTriviaAPI({ int? maxLength, }) async {
    final response = await randomTriviaAPIWithHttpInfo( maxLength: maxLength, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RandomTriviaAPI200Response',) as RandomTriviaAPI200Response;
    
    }
    return null;
  }
}
