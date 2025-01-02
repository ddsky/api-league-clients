//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MediaApi {
  MediaApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Detect Main Image Color API
  ///
  /// Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url of the image for which the colors should be detected.
  Future<Response> detectMainImageColorAPIWithHttpInfo(String url,) async {
    // ignore: prefer_const_declarations
    final path = r'/detect-color';

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

  /// Detect Main Image Color API
  ///
  /// Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url of the image for which the colors should be detected.
  Future<List<DetectMainImageColorAPI200ResponseInner>?> detectMainImageColorAPI(String url,) async {
    final response = await detectMainImageColorAPIWithHttpInfo(url,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DetectMainImageColorAPI200ResponseInner>') as List)
        .cast<DetectMainImageColorAPI200ResponseInner>()
        .toList(growable: false);

    }
    return null;
  }

  /// Rescale Image API
  ///
  /// Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url of the image to be rescaled.
  ///
  /// * [int] width (required):
  ///   The desired width of the rescaled image.
  ///
  /// * [int] height (required):
  ///   The desired height of the rescaled image.
  ///
  /// * [bool] crop (required):
  ///   Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
  Future<Response> rescaleImageAPIWithHttpInfo(String url, int width, int height, bool crop,) async {
    // ignore: prefer_const_declarations
    final path = r'/rescale-image';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'url', url));
      queryParams.addAll(_queryParams('', 'width', width));
      queryParams.addAll(_queryParams('', 'height', height));
      queryParams.addAll(_queryParams('', 'crop', crop));

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

  /// Rescale Image API
  ///
  /// Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url of the image to be rescaled.
  ///
  /// * [int] width (required):
  ///   The desired width of the rescaled image.
  ///
  /// * [int] height (required):
  ///   The desired height of the rescaled image.
  ///
  /// * [bool] crop (required):
  ///   Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
  Future<MultipartFile?> rescaleImageAPI(String url, int width, int height, bool crop,) async {
    final response = await rescaleImageAPIWithHttpInfo(url, width, height, crop,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Search Icons API
  ///
  /// Search through millions of icons to match any topic you want.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The search query.
  ///
  /// * [bool] onlyPublicDomain:
  ///   If true, only public domain icons will be returned.
  ///
  /// * [int] number:
  ///   The number of icons to return in range [1,100]
  Future<Response> searchIconsAPIWithHttpInfo(String query, { bool? onlyPublicDomain, int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search-icons';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));
    if (onlyPublicDomain != null) {
      queryParams.addAll(_queryParams('', 'only-public-domain', onlyPublicDomain));
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

  /// Search Icons API
  ///
  /// Search through millions of icons to match any topic you want.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The search query.
  ///
  /// * [bool] onlyPublicDomain:
  ///   If true, only public domain icons will be returned.
  ///
  /// * [int] number:
  ///   The number of icons to return in range [1,100]
  Future<SearchIconsAPI200Response?> searchIconsAPI(String query, { bool? onlyPublicDomain, int? number, }) async {
    final response = await searchIconsAPIWithHttpInfo(query,  onlyPublicDomain: onlyPublicDomain, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchIconsAPI200Response',) as SearchIconsAPI200Response;
    
    }
    return null;
  }

  /// Search Royalty Free Images API
  ///
  /// Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The search query.
  ///
  /// * [int] number:
  ///   The number of images to return in range [1,100]
  Future<Response> searchRoyaltyFreeImagesAPIWithHttpInfo(String query, { int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search-images';

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

  /// Search Royalty Free Images API
  ///
  /// Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The search query.
  ///
  /// * [int] number:
  ///   The number of images to return in range [1,100]
  Future<SearchRoyaltyFreeImagesAPI200Response?> searchRoyaltyFreeImagesAPI(String query, { int? number, }) async {
    final response = await searchRoyaltyFreeImagesAPIWithHttpInfo(query,  number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchRoyaltyFreeImagesAPI200Response',) as SearchRoyaltyFreeImagesAPI200Response;
    
    }
    return null;
  }

  /// Vector Search API
  ///
  /// Search through over 700,000 free to use vector icons. The license is either \"PUBLIC_DOMAIN\" or \"ATTRIBUTION\". If it is \"ATTRIBUTION\" just attribute the author somewhere in your project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The search query.
  ///
  /// * [int] offset:
  ///   The number of vectors to skip, between 0 and 1000
  ///
  /// * [int] number:
  ///   The number of vectors to return in range [1,10]
  Future<Response> vectorSearchAPIWithHttpInfo(String query, { int? offset, int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search-vectors';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));
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

  /// Vector Search API
  ///
  /// Search through over 700,000 free to use vector icons. The license is either \"PUBLIC_DOMAIN\" or \"ATTRIBUTION\". If it is \"ATTRIBUTION\" just attribute the author somewhere in your project.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The search query.
  ///
  /// * [int] offset:
  ///   The number of vectors to skip, between 0 and 1000
  ///
  /// * [int] number:
  ///   The number of vectors to return in range [1,10]
  Future<VectorSearchAPI200Response?> vectorSearchAPI(String query, { int? offset, int? number, }) async {
    final response = await vectorSearchAPIWithHttpInfo(query,  offset: offset, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VectorSearchAPI200Response',) as VectorSearchAPI200Response;
    
    }
    return null;
  }
}
