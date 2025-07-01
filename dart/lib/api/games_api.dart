//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GamesApi {
  GamesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Find Similar Games API
  ///
  /// Find similar games based on a given game using AI. This API allows you to retrieve a list of games that are similar to a specified game, providing recommendations based on various factors such as genre, gameplay mechanics, and user preferences.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the game.
  ///
  /// * [int] limit:
  ///   Number of results to return between 1 and 10.
  Future<Response> findSimilarGamesAPIWithHttpInfo(int id, { int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/list-similar-games';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'id', id));
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Find Similar Games API
  ///
  /// Find similar games based on a given game using AI. This API allows you to retrieve a list of games that are similar to a specified game, providing recommendations based on various factors such as genre, gameplay mechanics, and user preferences.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the game.
  ///
  /// * [int] limit:
  ///   Number of results to return between 1 and 10.
  Future<FindSimilarGamesAPI200Response?> findSimilarGamesAPI(int id, { int? limit, }) async {
    final response = await findSimilarGamesAPIWithHttpInfo(id,  limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FindSimilarGamesAPI200Response',) as FindSimilarGamesAPI200Response;
    
    }
    return null;
  }

  /// Retrieve Game by Id
  ///
  /// This API allows you to retrieve detailed information about a specific game by its unique identifier. Game details include the game's name, description, release date, developer, platforms, genres, tags, ratings, screenshots, videos, and more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the game.
  Future<Response> retrieveGameByIdWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/retrieve-game';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'id', id));

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

  /// Retrieve Game by Id
  ///
  /// This API allows you to retrieve detailed information about a specific game by its unique identifier. Game details include the game's name, description, release date, developer, platforms, genres, tags, ratings, screenshots, videos, and more.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the game.
  Future<RetrieveGameById200Response?> retrieveGameById(int id,) async {
    final response = await retrieveGameByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetrieveGameById200Response',) as RetrieveGameById200Response;
    
    }
    return null;
  }

  /// Search Games API
  ///
  /// Search through a vast database of over half a million video games from more than 50 platforms. This API allows you to find games based on various criteria such as genre, platform, release date, and more. The results include detailed information about each game, including ratings, descriptions, and images.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   The search query.
  ///
  /// * [int] offset:
  ///   Pagination offset (start index) between 0 and 1000.
  ///
  /// * [int] limit:
  ///   Number of results to return between 1 and 100.
  ///
  /// * [String] filters:
  ///   JSON array of filters
  ///
  /// * [String] sort:
  ///   Field to sort by
  ///
  /// * [String] sortOrder:
  ///   Sort order (asc or desc)
  ///
  /// * [bool] generateFilterOptions:
  ///   Whether to generate filter options
  Future<Response> searchGamesAPIWithHttpInfo({ String? query, int? offset, int? limit, String? filters, String? sort, String? sortOrder, bool? generateFilterOptions, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search-games';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (sortOrder != null) {
      queryParams.addAll(_queryParams('', 'sort-order', sortOrder));
    }
    if (generateFilterOptions != null) {
      queryParams.addAll(_queryParams('', 'generate-filter-options', generateFilterOptions));
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

  /// Search Games API
  ///
  /// Search through a vast database of over half a million video games from more than 50 platforms. This API allows you to find games based on various criteria such as genre, platform, release date, and more. The results include detailed information about each game, including ratings, descriptions, and images.
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   The search query.
  ///
  /// * [int] offset:
  ///   Pagination offset (start index) between 0 and 1000.
  ///
  /// * [int] limit:
  ///   Number of results to return between 1 and 100.
  ///
  /// * [String] filters:
  ///   JSON array of filters
  ///
  /// * [String] sort:
  ///   Field to sort by
  ///
  /// * [String] sortOrder:
  ///   Sort order (asc or desc)
  ///
  /// * [bool] generateFilterOptions:
  ///   Whether to generate filter options
  Future<SearchGamesAPI200Response?> searchGamesAPI({ String? query, int? offset, int? limit, String? filters, String? sort, String? sortOrder, bool? generateFilterOptions, }) async {
    final response = await searchGamesAPIWithHttpInfo( query: query, offset: offset, limit: limit, filters: filters, sort: sort, sortOrder: sortOrder, generateFilterOptions: generateFilterOptions, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchGamesAPI200Response',) as SearchGamesAPI200Response;
    
    }
    return null;
  }
}
