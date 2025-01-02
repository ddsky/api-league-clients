//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WebApi {
  WebApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Extract Authors API
  ///
  /// Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url with the article from which authors should be extracted.
  Future<Response> extractAuthorsAPIWithHttpInfo(String url,) async {
    // ignore: prefer_const_declarations
    final path = r'/extract-authors';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'url', url));

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

  /// Extract Authors API
  ///
  /// Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url with the article from which authors should be extracted.
  Future<ExtractAuthorsAPI200Response?> extractAuthorsAPI(String url,) async {
    final response = await extractAuthorsAPIWithHttpInfo(url,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExtractAuthorsAPI200Response',) as ExtractAuthorsAPI200Response;
    
    }
    return null;
  }

  /// Extract Content from a Web Page API
  ///
  /// Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url for which the content will be extracted.
  Future<Response> extractContentFromAWebPageAPIWithHttpInfo(String url,) async {
    // ignore: prefer_const_declarations
    final path = r'/extract-content';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'url', url));

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

  /// Extract Content from a Web Page API
  ///
  /// Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url for which the content will be extracted.
  Future<ExtractContentFromAWebPageAPI200Response?> extractContentFromAWebPageAPI(String url,) async {
    final response = await extractContentFromAWebPageAPIWithHttpInfo(url,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExtractContentFromAWebPageAPI200Response',) as ExtractContentFromAWebPageAPI200Response;
    
    }
    return null;
  }

  /// Extract Publish Date API
  ///
  /// Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url for which the publish date should be extracted.
  Future<Response> extractPublishDateAPIWithHttpInfo(String url,) async {
    // ignore: prefer_const_declarations
    final path = r'/extract-publish-date';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'url', url));

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

  /// Extract Publish Date API
  ///
  /// Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url for which the publish date should be extracted.
  Future<ExtractPublishDateAPI200Response?> extractPublishDateAPI(String url,) async {
    final response = await extractPublishDateAPIWithHttpInfo(url,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExtractPublishDateAPI200Response',) as ExtractPublishDateAPI200Response;
    
    }
    return null;
  }

  /// Retrieve Page Rank API
  ///
  /// This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domain (required):
  ///   The domain for which the page rank should be returned.
  Future<Response> retrievePageRankAPIWithHttpInfo(String domain,) async {
    // ignore: prefer_const_declarations
    final path = r'/retrieve-page-rank';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'domain', domain));

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

  /// Retrieve Page Rank API
  ///
  /// This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
  ///
  /// Parameters:
  ///
  /// * [String] domain (required):
  ///   The domain for which the page rank should be returned.
  Future<RetrievePageRankAPI200Response?> retrievePageRankAPI(String domain,) async {
    final response = await retrievePageRankAPIWithHttpInfo(domain,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetrievePageRankAPI200Response',) as RetrievePageRankAPI200Response;
    
    }
    return null;
  }

  /// Search Web API
  ///
  /// Search the web for a given query. The API returns a list of results with the title, summary, and URL.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The search query.
  ///
  /// * [int] number:
  ///   The number of results to return in range [1,50]
  Future<Response> searchWebAPIWithHttpInfo(String query, { int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search-web';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
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

  /// Search Web API
  ///
  /// Search the web for a given query. The API returns a list of results with the title, summary, and URL.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The search query.
  ///
  /// * [int] number:
  ///   The number of results to return in range [1,50]
  Future<SearchWebAPI200Response?> searchWebAPI(String query, { int? number, }) async {
    final response = await searchWebAPIWithHttpInfo(query,  number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchWebAPI200Response',) as SearchWebAPI200Response;
    
    }
    return null;
  }

  /// Verify Email Address API
  ///
  /// This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  ///   The email address to verify.
  Future<Response> verifyEmailAddressAPIWithHttpInfo(String email,) async {
    // ignore: prefer_const_declarations
    final path = r'/verify-email';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'email', email));

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

  /// Verify Email Address API
  ///
  /// This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  ///   The email address to verify.
  Future<VerifyEmailAddressAPI200Response?> verifyEmailAddressAPI(String email,) async {
    final response = await verifyEmailAddressAPIWithHttpInfo(email,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VerifyEmailAddressAPI200Response',) as VerifyEmailAddressAPI200Response;
    
    }
    return null;
  }
}
