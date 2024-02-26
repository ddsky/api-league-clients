//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class KnowledgeApi {
  KnowledgeApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Random Quote
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
  Future<Response> randomQuoteWithHttpInfo({ int minLength, int maxLength, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/retrieve-random-quote';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (minLength != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'min-length', minLength));
    }
    if (maxLength != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'max-length', maxLength));
    }

    const authNames = <String>['apiKey', 'headerApiKey'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Random Quote
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
  Future<InlineResponse20010> randomQuote({ int minLength, int maxLength, }) async {
    final response = await randomQuoteWithHttpInfo( minLength: minLength, maxLength: maxLength, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineResponse20010',) as InlineResponse20010;
    
    }
    return Future<InlineResponse20010>.value();
  }

  /// Random Trivia
  ///
  /// This endpoint returns a random piece of trivia.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] maxLength:
  ///   The maximum length of the trivia in letters.
  Future<Response> randomTriviaWithHttpInfo({ int maxLength, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/retrieve-random-trivia';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (maxLength != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'max-length', maxLength));
    }

    const authNames = <String>['apiKey', 'headerApiKey'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Random Trivia
  ///
  /// This endpoint returns a random piece of trivia.
  ///
  /// Parameters:
  ///
  /// * [int] maxLength:
  ///   The maximum length of the trivia in letters.
  Future<InlineResponse2009> randomTrivia({ int maxLength, }) async {
    final response = await randomTriviaWithHttpInfo( maxLength: maxLength, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineResponse2009',) as InlineResponse2009;
    
    }
    return Future<InlineResponse2009>.value();
  }
}
