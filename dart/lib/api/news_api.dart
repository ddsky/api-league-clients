//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class NewsApi {
  NewsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Extract News
  ///
  /// Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url of the news.
  ///
  /// * [bool] analyze (required):
  ///   Whether to analyze the news (extract entities etc.)
  Future<Response> extractNewsWithHttpInfo(String url, bool analyze,) async {
    // ignore: prefer_const_declarations
    final path = r'/extract-news';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'url', url));
      queryParams.addAll(_queryParams('', 'analyze', analyze));

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

  /// Extract News
  ///
  /// Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url of the news.
  ///
  /// * [bool] analyze (required):
  ///   Whether to analyze the news (extract entities etc.)
  Future<ExtractNews200Response?> extractNews(String url, bool analyze,) async {
    final response = await extractNewsWithHttpInfo(url, analyze,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExtractNews200Response',) as ExtractNews200Response;
    
    }
    return null;
  }

  /// Search News
  ///
  /// Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text:
  ///   The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
  ///
  /// * [String] sourceCountries:
  ///   A comma-separated list of ISO 3166 country codes from which the news should originate.
  ///
  /// * [String] language:
  ///   The ISO 6391 language code of the news.
  ///
  /// * [double] minSentiment:
  ///   The minimal sentiment of the news in range [-1,1].
  ///
  /// * [double] maxSentiment:
  ///   The maximal sentiment of the news in range [-1,1].
  ///
  /// * [String] earliestPublishDate:
  ///   The news must have been published after this date.
  ///
  /// * [String] latestPublishDate:
  ///   The news must have been published before this date.
  ///
  /// * [String] newsSources:
  ///   A comma-separated list of news sources from which the news should originate.
  ///
  /// * [String] authors:
  ///   A comma-separated list of author names. Only news from any of the given authors will be returned.
  ///
  /// * [String] entities:
  ///   Filter news by entities (see semantic types).
  ///
  /// * [String] locationFilter:
  ///   Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\"
  ///
  /// * [String] sort:
  ///   The sorting criteria (publish-time or sentiment).
  ///
  /// * [String] sortDirection:
  ///   Whether to sort ascending or descending (ASC or DESC).
  ///
  /// * [int] offset:
  ///   The number of news to skip in range [0,10000]
  ///
  /// * [int] number:
  ///   The number of news to return in range [1,100]
  Future<Response> searchNewsWithHttpInfo({ String? text, String? sourceCountries, String? language, double? minSentiment, double? maxSentiment, String? earliestPublishDate, String? latestPublishDate, String? newsSources, String? authors, String? entities, String? locationFilter, String? sort, String? sortDirection, int? offset, int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search-news';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (text != null) {
      queryParams.addAll(_queryParams('', 'text', text));
    }
    if (sourceCountries != null) {
      queryParams.addAll(_queryParams('', 'source-countries', sourceCountries));
    }
    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }
    if (minSentiment != null) {
      queryParams.addAll(_queryParams('', 'min-sentiment', minSentiment));
    }
    if (maxSentiment != null) {
      queryParams.addAll(_queryParams('', 'max-sentiment', maxSentiment));
    }
    if (earliestPublishDate != null) {
      queryParams.addAll(_queryParams('', 'earliest-publish-date', earliestPublishDate));
    }
    if (latestPublishDate != null) {
      queryParams.addAll(_queryParams('', 'latest-publish-date', latestPublishDate));
    }
    if (newsSources != null) {
      queryParams.addAll(_queryParams('', 'news-sources', newsSources));
    }
    if (authors != null) {
      queryParams.addAll(_queryParams('', 'authors', authors));
    }
    if (entities != null) {
      queryParams.addAll(_queryParams('', 'entities', entities));
    }
    if (locationFilter != null) {
      queryParams.addAll(_queryParams('', 'location-filter', locationFilter));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (sortDirection != null) {
      queryParams.addAll(_queryParams('', 'sort-direction', sortDirection));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
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

  /// Search News
  ///
  /// Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
  ///
  /// Parameters:
  ///
  /// * [String] text:
  ///   The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
  ///
  /// * [String] sourceCountries:
  ///   A comma-separated list of ISO 3166 country codes from which the news should originate.
  ///
  /// * [String] language:
  ///   The ISO 6391 language code of the news.
  ///
  /// * [double] minSentiment:
  ///   The minimal sentiment of the news in range [-1,1].
  ///
  /// * [double] maxSentiment:
  ///   The maximal sentiment of the news in range [-1,1].
  ///
  /// * [String] earliestPublishDate:
  ///   The news must have been published after this date.
  ///
  /// * [String] latestPublishDate:
  ///   The news must have been published before this date.
  ///
  /// * [String] newsSources:
  ///   A comma-separated list of news sources from which the news should originate.
  ///
  /// * [String] authors:
  ///   A comma-separated list of author names. Only news from any of the given authors will be returned.
  ///
  /// * [String] entities:
  ///   Filter news by entities (see semantic types).
  ///
  /// * [String] locationFilter:
  ///   Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\"
  ///
  /// * [String] sort:
  ///   The sorting criteria (publish-time or sentiment).
  ///
  /// * [String] sortDirection:
  ///   Whether to sort ascending or descending (ASC or DESC).
  ///
  /// * [int] offset:
  ///   The number of news to skip in range [0,10000]
  ///
  /// * [int] number:
  ///   The number of news to return in range [1,100]
  Future<SearchNews200Response?> searchNews({ String? text, String? sourceCountries, String? language, double? minSentiment, double? maxSentiment, String? earliestPublishDate, String? latestPublishDate, String? newsSources, String? authors, String? entities, String? locationFilter, String? sort, String? sortDirection, int? offset, int? number, }) async {
    final response = await searchNewsWithHttpInfo( text: text, sourceCountries: sourceCountries, language: language, minSentiment: minSentiment, maxSentiment: maxSentiment, earliestPublishDate: earliestPublishDate, latestPublishDate: latestPublishDate, newsSources: newsSources, authors: authors, entities: entities, locationFilter: locationFilter, sort: sort, sortDirection: sortDirection, offset: offset, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchNews200Response',) as SearchNews200Response;
    
    }
    return null;
  }
}
